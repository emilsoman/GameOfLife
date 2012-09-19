class SurvivalCommandment
  def go_to_heaven?(live_neighbour_count)
    (live_neighbour_count == 2 || live_neighbour_count == 3) ? true : false
  end
end
