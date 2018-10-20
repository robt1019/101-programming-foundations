ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages

ages.reject! { |_, value| value >= 100 }

p ages