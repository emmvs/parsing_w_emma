# frozen_string_literal: true

require 'json'
require 'open-uri'

# TODO: Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/Sonickaa'

# Usually webistes give you back HTML, but APIs give you back JSON
user_string = URI.open(url).read
# p user_string

# Generating a Hash out of a string by Parsing
user = JSON.parse(user_string)
# p user
p "#{user["name"]} is from #{user["location"]} 📍"
