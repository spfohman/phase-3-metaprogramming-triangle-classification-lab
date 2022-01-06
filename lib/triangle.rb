class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if ([side1, side2, side3].all?(&:positive?))&&(side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)

      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      else
        :scalene
      end
   
   else
    begin
      raise TriangleError
    end
     
   end
  end

  class TriangleError < StandardError
    def message 
      "That does not make a triangle"
    end
  end
end
