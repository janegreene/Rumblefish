
#!/bin/ruby

def displayPathtoPrincess(n,grid)
   # grid is array of strings ["---", "-m-", "p--"]
   # nested if statements to find coordinates of m and p
   #save coordinates of m & p and compare index to determine moves
   #"UP", "DOWN", "LEFT", "RIGHT"
  puts n
  # grid.map do |e|
  #   if e.include? 'p'
  #     e.index('p')
  #     require "pry"; binding.pry
  #   else e.include? 'm'
  #     e.index('m')
  #   end
    # def coordinates(e)
    #   each_with_index do |subarray, i|
    #     j = subarray.index(element)
    #     return i, j if j
    #   end
    #   nil
    # end
    # array.coordinates(m)     # => [1, 1]
    # array.coordinates(p)     # => [2, 0]
    grid.each_with_index do |e,i|
      if e.include? 'p'
        py = e.index('p')
        p = i, py if py
      elsif  e.include? 'm'
        my = e.index('m')
        m = i, my if my
      end
      puts "p = #{p}" if p
      puts "m = #{m}" if m
    end
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
