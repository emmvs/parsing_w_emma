# frozen_string_literal: true

require 'csv'

# TODO: let's read/write data from abba.csv
filepath = 'data/abba.csv'

# PARSING
puts '--- Welcome to Eurovision 🇸🇪'

CSV.foreach(filepath, headers: :first_row) do |row|
  p "#{row['First Name']} #{row['Last Name']} at the #{row['Instrument']} 🎤"
end

# CSV.foreach(filepath, headers: :first_row) do |row|
#   p row
# end

# STORING

# wb = wiping completly clean before re-writing
# a = append
# w = write
# wb = write binary

#                  👇🏻 option
CSV.open(filepath, "wb") do |csv|
  # Add header
  csv << ['First Name', 'Last Name', 'Instument']
  # Add each individual row
  csv << ['Agnetha', 'Fältskog', 'Vocals']
  csv << ['Björn', 'Ulvaeus', 'Guitar/Vocals']
  csv << ['Benny', 'Andersson', 'Keyboard/Vocals']
  csv << ['Anni-Frid', 'Lyngstad', 'Vocals']
end
