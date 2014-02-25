def area(length,width)
	puts "#{length}"
	puts "#{width}"
	a = length * width
	puts a
end

def volume(length, width, height)
	area(length, width) * height
end

def square(x)
	x * x
end

def cube(x)
	x ** 3
end

def name_tag_generator(first, last, gender, age)
	if gender == 'f'
		if age < 19
			puts "Miss #{first} #{last}"
		else
			puts "Ms #{first} #{last}"
		end
	else
		puts "Mr #{first} #{last}"
	end
end
