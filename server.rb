require 'eventmachine'
require 'thin'
require 'haml'

Dir["./**/*.rb"].each { |f| require f}

module Server
  def receive_data(data)
    puts data
    request = Thin::Request.new
    request.parse(data)
    status, headers, body = Application.call(request.env)

    response = "HTTP/1.1 #{status} OK\r\n"

    response << "\r\n"

    body.each do |b|
      response << "#{b}\r\n"
    end

    send_data response
    close_connection true
  end
end

EventMachine.run do
  EventMachine.start_server "0.0.0.0", 9292, Server
end
