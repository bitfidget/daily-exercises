def advanced_calculator()
  puts "Please select your operation:"
  puts "(s)square root"
  puts "(e)xpenentiation"
  puts "(b)mi calculator"
  puts "(m)ortgage calculator"
  operation_advanced = gets.chomp
  if operation_advanced == 'q'
    quit
  end


  case operation_advanced
  when 's'
    print "Enter your number: "
    num1 = gets.chomp.to_f
    root(num1)
  when 'e'
    print "Enter first number: "
    num1 = gets.chomp.to_f
    print "Enter second number: "
    num2 = gets.chomp.to_f
    exp(num1, num2)
  when 'b'
    print "Enter your height in cm: "
    num1 = gets.chomp.to_f/100
    print "Enter your weight in kg: "
    num2 = gets.chomp.to_f
    bmi(num1, num2)
  when 'm'
    print "How much will you borrow? "
    num1 = gets.chomp.to_f
    print "How long is your loan? "
    num2 = gets.chomp.to_f
    print "What interest rate are you getting? "
    num3 = gets.chomp.to_f
    mor(num1, num2, num3)

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

def bmi(x,y)
  yourbmi = y / (x * x)
  puts "#{y} devided by #{x} squared = #{y / (x * x) }"
  puts "___________________________________________________________________"
  puts "A BMI of less than 18 means you are under weight."
  puts "A BMI of less than 18.5 indicates you are thin for your height."
  puts "A BMI between 18.6 and 24.9 indicates you are at a healthy weight."
  puts "A BMI between 25 and 29.9 suggests you are overweight for your height."
  puts "A BMI of 30 or greater indicates obesity. If you are obese, consider consulting a doctor or losing weight."
  puts "___________________________________________________________________"
  
  if yourbmi < 18
    result = "under weight"
  elsif ((yourbmi >= 18) && (yourbmi <= 18.5))
    result = "thin"
  elsif ((yourbmi > 18.5) && (yourbmi < 25))
    result = "healthy weight"
  elsif ((yourbmi >= 25) && (yourbmi < 30))
    result = "over weight"
  else
    result = "obese"
  end
  puts "Your BMI of #{yourbmi} puts you in the #{result.upcase} range for your height"
end

def mor(x,y,z)
  c = (z/12)/100 # rate
  n = (y*12) #number pf payments
  payment = x * ((c * ((1 + c) ** n)) / (((1 + c) ** n) - 1))
  puts "your monthly payment = #{x} * ((#{c} * ((1 + #{c}) ** #{n})) / (((1 + #{c}) ** #{n}) - 1)) = $#{payment.round(2)}"
end


advanced_calculator


