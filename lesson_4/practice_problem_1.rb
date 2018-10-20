flintstones = ['Fred', 'Barney', 'Wilma', 'Betty', 'Pebbles', 'BamBam']

p flintstones.map.with_index { |flintstone, index| [index, flintstone] }.to_h