class SearchFacade
  def initialize(stations_array)
    @station = stations_array.map do |station_hash|
      Station.new(station_hash)
    end
  end
end
