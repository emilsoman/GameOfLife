require_relative 'god'

heaven = God.create_heaven
earth = God.create_earth
testament = God.create_testament

earth.seed_life([[0,1],[1,2],[2,0],[2,1],[2,2]])

loop do
  puts "\e[H\e[2J" # clears the screen
  puts earth.to_s
  sleep 0.25
  God.summon_for_judgement(earth, testament, heaven)
  earth = heaven.dup
  heaven.wipe
end
