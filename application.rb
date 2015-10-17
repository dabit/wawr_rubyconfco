class Application
  def self.call(env)
    case env["PATH_INFO"]
    when "/"
      HomeController.new(env).show
    else
      body = "Not found"
      [404, {}, [body]]
    end
  end
end
