module Transfermarkt
  def self.players_by_club(club_url)
    unparsed_page = open(club_url).read{|result| result.read}
    parsed_page = Nokogiri::HTML(unparsed_page)
    parsed_page.css('table.items > tbody > tr').map do |player|
      {
        name: player.at('.hide-for-small').text,
        salary: player.at('.rechts.hauptlink').text.gsub(/[^\d\,А-я]/, '')
      }
    end    
  end
end