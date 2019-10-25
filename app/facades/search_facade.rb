class SearchFacade
  attr_reader :stations

  def initialize(stations_array)
    @stations = stations_array.map do|station_hash|
      Station.new(station_hash)
    end
  end
end
