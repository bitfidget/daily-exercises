require 'numbers_and_words'

I18n.enforce_available_locales = false

print "Please enter a number or q to quit "
input = gets.chomp

while input != 'q'

  if input.to_i.between?(1,99)
    output = input.to_i.to_words
  elsif input == 'q'
    exit
  else
    output = "That number is out of the acceptable range"
  end

  puts output

  `say '#{output}'`

  print "Please enter a number or q to quit "
  input = gets.chomp

end