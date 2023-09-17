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

loop do

  puts 'Simple Calculator Application'
  puts "\n#{operations}"
  print "\nSelect a operation: "
  input = gets.chomp

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
          puts 'Invalid input! Please enter a valid number.'
        end
      end

      while true
        print "\nInsert the second value: "
        second_value = gets.chomp

        if second_value.match?(valid_number_regex)
          second_value = second_value.to_f
          break
        else
          puts 'Invalid input! Please enter a valid number.'
        end
      end

      case operation
      when 1
        print "\n#{first_value} + #{second_value} = "
        puts first_value + second_value
      when 2
        print "\n#{first_value} - #{second_value} = "
        puts first_value - second_value
      when 3
        print "\n#{first_value} * #{second_value} = "
        puts first_value * second_value
      when 4
        if second_value.zero?
          puts "\nDivision by zero is not allowed."
        else
          print "\n#{first_value} / #{second_value} = "
          puts first_value / second_value
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
