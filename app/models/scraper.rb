require 'net/http'

class Scraper
  attr_reader :document

  def initialize(url)
    res = Net::HTTP.get(URI(url))
    @document = Nokogiri::HTML(res)
  end

  def text(selector)
    @document.at_css(selector).text
  end

  def present?(selector)
    @document.at_css(selector).present?
  end
end