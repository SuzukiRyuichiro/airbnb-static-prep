require 'open-uri'
require 'json'
class FlatsController < ApplicationController
  def index
    # Make a request to API
    # Parse the JSON
    # assign the array to an instance variable
    json = URI.open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json').read
    @flats = JSON.parse(json)
  end
end
