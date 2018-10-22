def greetings(name_array, title_occupation)
  name = name_array.join(' ')

  "Hello, #{name}! Nice to have a " \
  "#{title_occupation[:title]} #{title_occupation[:occupation]} " \
  'around.'
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
