munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, data| 
  age = data['age']
  if age < 18
    data['age_group'] = 'kid'
  elsif age < 65
    data['age_group'] = 'adult'
  else
    data['age_group'] = 'senior'
  end
end

p munsters