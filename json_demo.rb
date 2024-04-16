# frozen_string_literal: true

require 'json'

# TODO: let's read/write data from abba.json
filepath = 'data/abba.json'

# PARSING
# data_as_string = File.read(filepath)
# Data is String by default
# abba_hash = JSON.parse(data_as_string)
# p abba_hash

# # STORING (A Ruby Hash)
abba = {
  abba: [
    {
      first_name: 'Agnetha',
      last_name: 'Fältskog',
      instrument: 'Vocals'
    },
    {
      first_name: 'Björn',
      last_name: 'Ulvaeus',
      instrument: 'Guitar'
    },
    {
      first_name: 'Benny',
      last_name: 'Andersson',
      instrument: 'Keyboard'
    },
    {
      first_name: 'Anni-Frid (Frida)',
      last_name: 'Lyngstad',
      instrument: 'Vocals'
    }
  ]
}

#                   a for append
File.open(filepath, 'a') do |file|
  data_as_string = JSON.generate(abba)
  file.write(data_as_string)
end
