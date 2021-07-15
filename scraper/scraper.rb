require "nokogiri"
require "byebug"
require "open-uri"

require_relative 'lib/transfermarkt'

# url = URI ("https://www.transfermarkt.ru/zenit-st-petersburg/startseite/verein/964")
# players = Transfermarkt.players_by_club(url)
# byebug

url = 'https://www.transfermarkt.ru/%D0%9F%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80-%D0%BB%D0%B8%D0%B3%D0%B0/startseite/wettbewerb/RU1'
unparsed_page = open(url).read{|result| result.read}
parsed_page = Nokogiri::HTML(unparsed_page)
teams = parsed_page.css('.responsive-table table > tbody > tr').map do |team|
  {
    team_name: team.css('.hauptlink')[1].text.strip,
    team_path: team.at('.hauptlink a')['href']
  }
end

byebug
puts '1'