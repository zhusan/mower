class Lawn

  def initialize(x, y)
    @x = x
    @y = y
  end

  def x
    @x
  end

  def y
    @y
  end

  def valid?
    unless x >0 && y > 0
      puts "请输入正确的坐标"
      return false
    end
    return true
  end

end
