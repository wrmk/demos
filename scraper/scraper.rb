require "nokogiri"
require "byebug"
require "open-uri"

require_relative 'lib/transfermarkt'

url = URI ("https://www.transfermarkt.ru/zenit-st-petersburg/startseite/verein/964")
players = Transfermarkt.players_by_club(url)
byebug


puts players.inspect