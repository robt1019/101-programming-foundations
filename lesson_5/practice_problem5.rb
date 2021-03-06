munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_munsters = munsters.select do |munster_name, munster_data| 
  munster_data['gender'] == 'male'
end

total_age = male_munsters.reduce(0) do |total, (key, value)|
  total += value['age']
end

puts total_age