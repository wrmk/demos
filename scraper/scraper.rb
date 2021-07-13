require "nokogiri"
require "byebug"
require "net/http"

def scraper
  value = "ruby"
  url = URI ("https://rabota.yandex.ru/rossiya/vakansii/?text=#{value}")
  unparsed_page = Net::HTTP.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  job_listings = parsed_page.css('div.click-area')
  byebug
end

scraper