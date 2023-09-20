def clear_screen
  if RUBY_PLATFORM =~ /win32|win64|\.NET|windows|cygwin|mingw32/i
    system('cls')
  else
    system('clear')
  end
end

operations = [
  '0. Exit',
  '1. Addition',
  '2. Subtraction',
  '3. Multiplication',
  '4. Division'
]

def print_menu(menu)
  max_length = menu.map { |op| op.length }.max + 4
  horizontal_line = '─' * (max_length)

  puts "\n┌" + horizontal_line + '┐'

  menu.each do |operation|
    padding = max_length - operation.length - 2
    menu_line = "|  #{operation}#{' ' * padding}|"
    puts menu_line
  end

  puts '└' + horizontal_line + '┘'
end

def print_result(results)
  results_str = results.to_s
  max_length = results_str.length + 4

  horizontal_line = '─' * (max_length)
  puts "\n┌" + horizontal_line + '┐'
  puts "|  #{results}  |"
  puts '└' + horizontal_line + '┘'
end

loop do

  puts 'Simple Calculator Application'

  print_menu(operations)

  print "\nSelect a operation: "
  input = gets.chomp
  clear_screen

  if input.match?(/\A\d+\z/)
    operation = input.to_i

    if (0..4).include?(operation)
      if operation == 0
        puts "\nSee you!"
      break
      end

      puts "\n#{operations[operation]}"

      valid_number_regex = /\A\d+(\.\d+)?\z/

      while true
        print "\nInsert the first value: "
        first_value = gets.chomp

        if first_value.match?(valid_number_regex)
          first_value = first_value.to_f
          break
        else
          puts "\nInvalid input! Please enter a valid number."
        end
      end

      while true
        print "\nInsert the second value: "
        second_value = gets.chomp

        if second_value.match?(valid_number_regex)
          second_value = second_value.to_f
          break
        else
          puts "\nInvalid input! Please enter a valid number."
        end
      end

      case operation
      when 1
        result = "#{first_value} + #{second_value} = #{first_value + second_value}"
        print_result(result)
      when 2
        result = "#{first_value} - #{second_value} = #{first_value - second_value}"
        print_result(result)
      when 3
        result = "#{first_value} * #{second_value} = #{first_value * second_value}"
        print_result(result)
      when 4
        if second_value.zero?
          result = "Division by zero is not allowed."
          print_result(result)
        else
          result = "#{first_value} / #{second_value} = #{first_value / second_value}"
          print_result(result)
        end
      end

      print "\nPress Enter to continue..."
      gets.chomp
      clear_screen
    else
      puts "\nInvalid operation! Please enter a number between 0 and 4."
      print "\nPress Enter to continue..."
      gets.chomp
      clear_screen
    end
  else
    puts "\nInvalid input! Please enter a valid integer!"
    print "\nPress Enter to continue..."
    gets.chomp
    clear_screen
  end
end
