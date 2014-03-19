class Triangle
  def initialize(sides)
    @sides = sides.sort
  end

  def triangle_type
    if @sides[0] <= 0 || @sides[0] + @sides[1] <= @sides[2]
      raise "This is not a trinagle possible"
    end

    if @sides[0] == @sides[2]
      "eqilateral"
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      "isoceles"
    else
      "scalene"
    end
      
  end
end

triangle1 = Triangle.new([10,10,10])
puts triangle.triangle_type