def int?(string)
  string.to_i.to_s == string
end

def minilang(commands_string)

  register = 0
  stack = []

  commands = commands_string.split

  commands.each do |command|
    case command
    when 'ADD' then register = register + stack.pop
    when 'SUB' then register = register - stack.pop
    when 'MULT' then register = register * stack.pop
    when 'DIV' then register = register / stack.pop
    when 'MOD' then register = register % stack.pop
    when 'PUSH' then stack << register
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else
      if int?(command)
        register = command.to_i
      else
        puts 'invalid command dingbat'
      end
    end
  end
end

# minilang('PRINT')
# # 0
# puts
# minilang('5 PUSH 3 MULT PRINT')
# # 15
# puts
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
# puts
# minilang('5 PUSH POP PRINT')
# # 5
# puts
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # 5
# # 10
# # 4
# # 7
# puts
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # 6
# puts
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # 12
# puts
# minilang('-3 PUSH 5 SUB PRINT')
# # 8
# puts
# minilang('6 PUSH')
# # (nothing printed; no PRINT commands)

minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')