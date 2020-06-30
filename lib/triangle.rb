require 'pry'
class Triangle

  def initialize(firstl, secondl, thirdl)
    @triangle_sides = []
    @triangle_sides << firstl
    @triangle_sides << secondl
    @triangle_sides << thirdl
  end

  def legal?
    @triangle_sides.all? {|side| side > 0}
  end

  class TriangleError < StandardError
  end

  def kind
    binding.pry
    if legal?
      if @triangle_sides[0] == @triangle_sides[1] && @triangle_sides[1] == @triangle_sides[2]
        :equilateral
      elsif @triangle_sides[0] == @triangle_sides[1] || @triangle_sides[1] == @triangle_sides[2] || @triangle_sides[0] == @triangle_sides[2]
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end
