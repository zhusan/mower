require 'pry'
class Mower
  # 方向 东，南，西， 北
  DIRECTION = ['E', 'S', 'W', 'N']

  MOVE_DIRECTION = {
    'E' => [1, 0],
    'S' => [0, -1],
    'W' => [-1, 0],
    'N' => [0, 1]
  }

  STEP = ['M', 'L', 'R']

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def x
    @x
  end

  def y
    @y
  end

  def direction
    @direction
  end

  def move(step)
    set_direction_by_step(step)
    if @x < 0 || @y < 0
      puts "超出草地范围 [#{@x}, #{@y}]"
      return false
    end
    return true
  end

  def set_direction_by_step(step)
    index = DIRECTION.index(@direction)
    case step
    when 'L'
      index -= 1
    when 'R'
      index += 1
      index -= DIRECTION.size if index > (DIRECTION.size - 1) 
    else
      x1, y1 = MOVE_DIRECTION[@direction]
      @x += x1
      @y += y1
    end
    @direction = DIRECTION[index]
  end

  def current_direction(result)
    if result
      "#{@x} #{@y} #{@direction}"
    else
      '割草路径超出超出范围'
    end
  end

  def valid?
    unless DIRECTION.include?(@direction)
      puts '请输入正确的坐标和方向'
      return false
    end
    return true
  end

  def valid_path?(path)
    valid = !path.nil?

    path.to_s.split('').each do |step|
      unless STEP.include?(step)
        valid = false
        break
      end
    end

    puts '请输入正确的路径' unless valid

    valid
  end

end

