class HomeController < Controller
  attr_accessor :env

  def initialize(env)
    @env = env
  end

  def show
    @name = params["name"] || "Talleres"
    body = render_with_layout(
      layout,
      "views/home/show.html.haml"
    )
    [200, {}, [body]]
  end
end
