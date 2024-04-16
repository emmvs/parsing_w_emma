# frozen_string_literal: true

require 'open-uri'
require 'nokogiri' # Parse HTML/XML >> Nokogiri

# Let's scrape recipes from https://recipes.lewagon.com/

# PARSING
url = "https://recipes.lewagon.com/"

html_file = URI.open(url).read
# p html_file
html_doc = Nokogiri::HTML.parse(html_file)
# p html_doc

html_doc.search('.recipe-name').each do |element|
  # p "👻 ELEMENT #{element}"
  # p "👻 TEXT #{element.text}"
  # p "👻 STRIPPED #{element.text.strip}"
  p element.text.strip
end
