require './models/lawn'
require './models/mower'

class Work

  def mower
    @mower
  end

  def lawn
    @lawn
  end

  def set_lawn(lawn_area)
    lawn_x, lawn_y = lawn_area.split(" ")
    @lawn = Lawn.new(lawn_x.to_i, lawn_y.to_i)
    @lawn.valid?
  end

  def set_mower(mower_direction)
    mower_x, mower_y, mower_move_direction = mower_direction.split(" ")
    @mower = Mower.new(mower_x.to_i, mower_y.to_i, mower_move_direction)
    @mower.valid? && valid_mower_direction?
  end

  def valid_mower_direction?
    unless @mower.x < @lawn.x && @mower.y < @lawn.y
      puts "開始座標不能超出草地範圍"
      return false
    end
    return true
  end


  def mow(path_input)
    path_input.split('').each do |step|
      @mower.move(step)
    end

    puts @mower.current_direction
    @mower.current_direction
  end

end

