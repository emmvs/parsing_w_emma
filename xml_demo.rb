# frozen_string_literal: true

require 'nokogiri'

# PARSING
filepath = File.open('data/abba.xml')
document = Nokogiri::XML(filepath)

document.root.xpath('member').each do |member|
  first_name = member.xpath('first_name').text
  last_name = member.xpath('last_name').text
  instrument = member.xpath('instrument').text

  p "#{first_name} #{last_name} at the #{instrument} 🎶"
end

# STORING
builder = Nokogiri::XML::Builder.new(encoding: 'UTF-8') do
  abba do
    member do
      first_name 'Agnetha'
      last_name 'Fältskog'
      instrument 'Vocals'
    end
    member do
      first_name 'Björn'
      last_name 'Ulvaeus'
      instrument 'Guitar/Vocals'
    end
    member do
      first_name 'Benny'
      last_name 'Andersson'
      instrument 'Keyboard/Vocals'
    end
    member do
      first_name 'Anni-Frid'
      last_name 'Lyngstad'
      instrument 'Vocals'
    end
  end
end

# To print the generated XML to console
puts builder.to_xml

# To save the generated XML to a file
File.write('data/abba.xml', builder.to_xml)

File.open(filepath, 'wb') { |file| file.write(builder.to_xml) }
