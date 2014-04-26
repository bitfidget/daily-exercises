
class Luhn
  def initialize(number)
    @number = number
    puts number

  end
  def valid?
    splitNumber = @number.to_s.split('').reverse
    splitNumberProcess = []
    splitNumber.each_with_index do |number, i|
      if ((i % 2) == 0)
        splitNumberProcess<<number.to_i
      else
        doubled = (number.to_i * 2)
        if (doubled >= 10)
          doubled = (doubled - 9)
        end
        splitNumberProcess<<doubled
      end

    end

    #next - flatten all the numbers in the array to make one long numebr again

    print splitNumberProcess

    print finalNumber
  end
end






Luhn.new(2323_2005_7766_3554).valid?