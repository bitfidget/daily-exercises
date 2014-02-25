def menu()
	puts "Please select your calculator"
	puts "1. Basic calculator"
	puts "2. Advanced calculator"
  puts "q. to quit"

	choice = gets.chomp

  # if choice == 'q'
  #   quit
  # else
  #   choice.to_i
  #   puts "#{choice}"
  #  	while (choice != 1 && choice != 2)
  # 		puts "Please select 1 or 2."
  # 		choice = gets.chomp.to_i
	 # end
  # end
	
	# puts "you chose #{choice}"

	case choice
	when '1'
		basic_calculator
	when '2'
		advanced_calculator
  when 'q'
    quit
  else 
    puts "Fat fingers? Lets try that again..."
    menu
	end
end

# basic calcs only from here - first allow user to choose function they want to use
def basic_calculator()
	puts "Please select your operation:"
	puts "(a) - addition"
	puts "(s) - subtraction"
	puts "(d) - division"
	puts "(m) - multiplication"
	operation = gets.chomp
# get the numbers
  if operation == 'q'
    quit
  end
	print "Enter first number: "
	num1 = gets.chomp.to_f
	print "Enter second number: "
	num2 = gets.chomp.to_f
# complete calc functions on numbers that were input
	case operation
	when 'a'
		add(num1, num2)
	when 's'
		subtract(num1, num2)
	when 'd'
		divide(num1, num2)
	when 'm'
		multiply(num1, num2)
  when 'q'
    quit
	else
		puts "Please enter a, s, d or m"
    basic_calculator
	end
end

def advanced_calculator()
  puts "Please select your operation:"
  puts "(s) - square root"
  puts "(e) - expenentiation"
  operation_advanced = gets.chomp
  if operation_advanced == 'q'
    quit
  end
  print "Enter your number: "
  num1 = gets.chomp.to_f
  if operation_advanced != 's'
    print "Enter second number: "
    num2 = gets.chomp.to_f
  end
  case operation_advanced
  when 's'
    root(num1)
  when 'e'
    exp(num1, num2)
  when 'q'
    quit
  else
    puts "Please enter s or e"
  end
end

def quit
  puts "Thanks for stopping by!"
  exit
end

def root(x)
	puts "root of #{x} = #{Math.sqrt(x)}"
end

def exp(x,y)
  puts "#{x} to the power of #{y} = #{x ** y}"
end

def add(x,y)
	puts "#{x} + #{y} = #{x + y}"
end

def subtract(x,y)
	puts "#{x} - #{y} = #{x - y}"
end

def multiply(x,y)
	puts "#{x} x #{y} = #{x * y}"
end

def divide(x,y)
	puts "#{x} / #{y} = #{x / y}"
end

while true
	menu()
end

# total = 0
# print "Enter first number"
# total = gets.chomp.to_i




## Also add BMI, Mortgage calculator

