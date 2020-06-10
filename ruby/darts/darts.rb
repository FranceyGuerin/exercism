class Darts
  
  def initialize(x, y)
    @hypotenuse = Math.sqrt(x*x + y*y)
  end

  def score
    if @hypotenuse > 10
      return 0
    elsif (@hypotenuse > 5) && (@hypotenuse <= 10)
      return 1
    elsif (@hypotenuse > 1) && (@hypotenuse <= 5)
      return 5
    elsif (@hypotenuse >= 0) && (@hypotenuse <= 1)
      return 10
    end
  end

end
