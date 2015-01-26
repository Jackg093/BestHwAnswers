class Quadrilateral   
  attr_accessor :s1, :s2, :s3, :s4, :side_lengths, :rest
  def initialize(s1, *rest) 
    @s1 = s1
    @rest = rest
    @rest << @s1 
  end

  def perimeter1#same sides
    @s1 * 4 ;end

  def perimeter2# 2 and 2
    @rest.sort_by!{|a,b|}.reduce(:+) ;end
  
  def perimeter
    @rest.reduce(:+)
  end
    # def show_side_values
    #     puts "Left side is #{@left}"  
    #     puts "Right side is #{@right}"  
    #     puts "Top is #{@top}"
    #     puts "Bottom is #{@bottom}"
    #     puts "Quadrilaterals have #{@sides} sides"
    # end
end


class Rectangle < Quadrilateral
  # def initialize(s1, s2)
  #   @s1 = s1
  #   @s2 = s2
  # end
  
  def area
    @rest.sort_by{|a,b|}.uniq!.reduce(:*)
  end

  # def perimeter
  #   @left * 2 + @bottom * 2
  # end
end

class Square < Rectangle
  def perimeter
    @s1 * 4 ;end  
  
  def length 
    @s1 ;end

  def area
    @s1**2
  end
end

class Trapezoid < Quadrilateral ;end 

class Rhombus < Trapezoid
#   @num_of_same_sides = "all"
#   def initialize(left)
#     @left = left
#   end
  
  def length 
    @s1 ;end

  def perimeter
  
    @s1 * 4 ;end  
  end


def test
      q = Quadrilateral.new(1)
      p q
      r = Quadrilateral.new(2,4,2,4)
      p r


      p q.perimeter1
      p r.perimeter2


      squa = Square.new(4)
      p squa.perimeter 
      p squa.area 
      p squa.length
      puts squa.is_a? Rectangle
      puts squa.is_a? Quadrilateral
      puts squa.is_a? Trapezoid
      puts squa.is_a? Rhombus

      rect = Rectangle.new(4,8,4,8)
      p rect.perimeter
      p rect.area 
      puts rect.is_a? Quadrilateral
      puts not(rect.is_a? Trapezoid)
      puts rect.is_a? Square
      puts rect.is_a? Trapezoid
      puts rect.is_a? Rhombus


      rhom = Rhombus.new(1)
      puts rhom.length
      puts rhom.perimeter  
      puts rhom.is_a? Rectangle
      puts rhom.is_a? Quadrilateral
      puts rhom.is_a? Trapezoid
      puts rhom.is_a? Square

      trap = Trapezoid.new(2,2,3,4)
      puts trap.perimeter
      puts trap.is_a? Rectangle
      puts trap.is_a? Quadrilateral
      puts trap.is_a? Rhombus
      puts trap.is_a? Square
end 

test 
