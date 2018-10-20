flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |flintstone| flintstone[0,3] }

p flintstones