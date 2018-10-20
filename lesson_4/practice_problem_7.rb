statement = "The Flintstones Rock"

counts = Hash.new(0)

statement.chars.each { |char| counts[char] += 1 }

p counts