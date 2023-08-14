require 'open-uri'
require 'json'
class FlatsController < ApplicationController
  def index
    # Make a request to API
    # Parse the JSON
    # assign the array to an instance variable
    @flats = get_flats
  end

  def show
    # Make an API request
    flats = get_flats
    # parse JSON
    # find the flat with the ID
    @flat = flats.find { |flat| flat['id'] == params[:id].to_i }
    # assign the flat with the ID in the url
  end

  private

  def get_flats
    json = URI.open('https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json').read
    JSON.parse(json)
  end
end
