module ApplicationHelper
  def markdown(text)
    unless @markdown
      renderer = Redcarpet::Render::HTML.new filter_html: true
      @markdown = Redcarpet::Markdown.new renderer,
      tables: true
    end
    @markdown.render(text).html_safe
  end
end
