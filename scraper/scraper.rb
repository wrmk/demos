require "nokogiri"
require "byebug"
require "open-uri"

def scraper
  url = URI ("https://www.transfermarkt.ru/zenit-st-petersburg/startseite/verein/964")
  unparsed_page = open(url).read{|result| result.read}
  parsed_page = Nokogiri::HTML(unparsed_page)

  players = 
    parsed_page.css('table.items > tbody > tr').map do |player|
      {
        name: player.at('.hide-for-small').text,
        salary: player.at('.rechts.hauptlink').text.gsub(/[^\d\.a-z]/,'')
      }
  end
end

scraper