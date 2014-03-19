class Triangle
  attr_reader :side1, :side2, :side3

  def define_triangle(a,b,c)
    if (a + b < c) || (a + c < b) || (b + c < a)
      puts "ERROR: This is not a triangle possible"
    else
      tri_test = [a, b, c].uniq.count
      case tri_test
      when 1 
        puts "Your triangle is EQUILATERAL"
      when 2 
        puts "Your triangle is ISOCELES"
      when 3 
        puts "Your triangle is SCALENE"
      end
    end
  end
end

triangle = Triangle.new
triangle.define_triangle(2,9,7)