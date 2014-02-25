a = []

a = [33, '2', 1]

puts a[0] #grab first value of array or a.first
puts a[1]
puts a[-1] #grab last value of array or a.last

puts a.length

a[3] = "buttock" # add the value to position 3 in the array

a.push "Gummo" # add value to end of array
a.pop #pop last value from end of array

a.unshift "Yoko" # add a value to the start of the array
a.shift # pop first value of the array

a.delete_at x #remove the xth array value

a.sample #grab a random value from the array

a.flatten # flatten the array if it has arrays inside
a.uniq #just grab the unique elements of the array (no duplicates)



new_array = "this is a whole new string of words".split " " #this is a lazy way to create an array of words without having to enter all the quotes and commas



puts new_array

