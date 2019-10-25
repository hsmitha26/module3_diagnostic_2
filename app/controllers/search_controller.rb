class SearchController < ApplicationController
  def index
    connection = Faraday.get('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?') do |faraday|
      faraday.params[:api_key] = ENV['nrel_api_key']
      faraday.params[:latitude] = 39.751312
      faraday.params[:longitude] = -104.996594
      faraday.params[:radius] = 1.0
      faraday.params[:limit] = 2
    end
    binding.pry
    @facade = SearchFacade.new(params)
  end
end
