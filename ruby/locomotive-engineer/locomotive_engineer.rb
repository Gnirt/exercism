class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
    args
  end

  def self.fix_list_of_wagons((first, second, third, *fourth), missing_wagons)
    [third, *missing_wagons, *fourth, first, second]
  end

  def self.add_missing_stops(routing, **stops)
    {**routing, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
