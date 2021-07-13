require "nokogiri"
require "byebug"
require "open-uri"

def scraper
  # value = "ruby"
  url = URI ("https://www.upwork.com/ab/find-work/")
  unparsed_page = open(url).read{|result| result.read}
  parsed_page = Nokogiri::HTML(unparsed_page)
  # job_listings = parsed_page.css('div.click-area')
  # job_listings.each do |job_listing|
  #   job = {
  #     title: job_listing.css('heading heading_level_3').text,
  #     company:job_listing.css('serp-vacancy__company').text
  #   }
    
  # end  
  byebug
end

scraper