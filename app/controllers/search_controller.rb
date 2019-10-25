class SearchController < ApplicationController
  def index
    response = Faraday.get('https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?') do |faraday|
      faraday.params[:api_key] = ENV['nrel_api_key']
      faraday.params[:location] = params["location"]
      faraday.params[:radius] = 1.0
      faraday.params[:limit] = 2
    end
    all_stations = JSON.parse(response.body, symbolize_names: true)
    @facade = SearchFacade.new(all_stations[:fuel_stations])
  end
end
