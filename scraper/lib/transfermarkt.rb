module Transfermarkt
  def self.players_by_club(club_url)
    unparsed_page = open(club_url).read{|result| result.read}
    parsed_page = Nokogiri::HTML(unparsed_page)
    parsed_page.css('table.items > tbody > tr').map do |player|
      {
        name: player.at('.hide-for-small').text,
        salary: player.at('.rechts.hauptlink').text
      }
    end    
  end

  def self.club_price(club_url)
    players = players_by_club(club_url)
    players.sum{}
  end

  def self.price_to_int(price)
    # 7,50 млн € => 7 500 000
    price = price.gsub(/[^\d\,А-я€]/, '')
    unless price[-1] == "€"
      raise ArgumentError.new("Expected salary in Euros, got #{price}")
    end

    price = price[0..-4]
    price = price.gsub(/(?<=\d),(?=\d)/, '.') #replace , with .
    
   price.to_f  * magnitude_to_integer(price[-1])

  end

  def self.magnitude_to_integer(s)
    return 1_000_000 if s =='м'
    return 1_000 if s == 'т'

    raise ArgumentError.new("Expected млн or тыс, got #{s}")
  end  

end