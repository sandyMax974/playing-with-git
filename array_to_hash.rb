players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

sorted_by_sport = Hash.new

players.each do |player|
  sport = player [:sport]

  if sorted_by_sport[sport] == nil
    sorted_by_sport[sport] = []
  end

  sorted_by_sport[sport].push(player [:name])
end

puts sorted_by_sport
