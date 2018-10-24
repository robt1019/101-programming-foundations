def lights_on(number_of_switches)

  switches = Array.new(number_of_switches, nil) 

  1.upto(number_of_switches) do |round|
    1.upto(number_of_switches) do |index|
      if index % round == 0
        switches[index] = switches[index] ? nil : index
      end
    end
  end

  switches.select { |value| value }
end

p lights_on(5)
p lights_on(10)
p lights_on(1000)