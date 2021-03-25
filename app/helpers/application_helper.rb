module ApplicationHelper

  def convert_url_to_a_element(text)
    uri_reg = URI.regexp(%w[http https])
    text.gsub(uri_reg) { %{<a href="#{$&}">#{$&}</a>} }
  end
end
