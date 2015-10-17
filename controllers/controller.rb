class Controller
  def layout
    "views/layouts/application.html.haml"
  end

  def render_with_layout(layout_path, template_path)
    layout = File.read(layout_path)
    template = File.read(template_path)
    Haml::Engine.new(layout).render(self) do
      Haml::Engine.new(template).render(self)
    end
  end

  def params
    Rack::Utils.parse_nested_query(@env["QUERY_STRING"])
  end
end
