
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
    # if i ==
    grid.each_with_index do |e,i|
      puts e,i

    end
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
