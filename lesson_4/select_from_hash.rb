def select_fruit(produce_hash)
  counter = 0
  produce_keys = produce_hash.keys
  fruit_hash = {}
  loop do

    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    produce_type = produce_hash[current_key]

    if(produce_type == 'Fruit')
      fruit_hash[current_key] = produce_type
    end

    counter += 1
  end
  fruit_hash
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable',
}

p select_fruit(produce)