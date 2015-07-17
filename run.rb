require "./models/work"
work = Work.new

puts "请输入草地右上角的座標(坐标之间使用空格相隔)"
lawn = false
while !lawn
  lawn_area = gets.chomp
  lawn = work.set_lawn(lawn_area)
end

puts "请输入割草機的起始座標與其面向方向"
mower = false
while !mower
  mower_direction = gets.chomp
  mower = work.set_mower(mower_direction)
end

puts "割草路徑往前(M), 向左轉(L),向右轉(R)"
path = false
while !path
  path_input = gets.chomp
  path = work.mower.valid_path?(path_input)
end

work.mow(path_input)

