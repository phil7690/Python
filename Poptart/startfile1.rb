
# contact info for each posting
module Contact

# should have added date, available until
  def date
    @time = Time.new
    puts @time

  end
# should have address, pick up/deliver, return status
  def info
    @address = address
    @phone = phone
    @email = email
    @delivery = delivery
    @date_back = date_back

  end

# things that don't fit anywhere else
  def notes
    @other = other

  end

end



class Flat
  include Contact

  attr_reader :width, :height, :style, :finish

  def initialize(width, height, style, finish)
    @width = width
    @height = height
    @style = style
    @finish = finish
  end


end

class Riser
end

class Stairs

end

class Jacks
end

class Doors
end

class Windows
end

class Drapes
end

class Pipe
end

class Stands
end


File.open("flat_input.txt", "w") do |line|
puts "Enter width: "
width = gets.chomp
puts "Width: #{width}"
puts "Enter height: "
height = gets.chomp
puts "Height: #{height}"
puts "Enter style (TV or Theatre): "
style = gets.chomp
puts "Style: #{style}"
puts "Enter Finish (painted, bare, etc.): "
finish = gets.chomp
puts "Finish: #{finish}"
line.puts width, height, style, finish
end
