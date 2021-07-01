
#!/bin/ruby

def displayPathtoPrincess(n,grid)
   # grid is array of strings ["---", "-m-", "p--"]
   # nested if statements to find coordinates of m and p
   #save coordinates of m & p and compare index to determine moves
   #"UP", "DOWN", "LEFT", "RIGHT"
    p = Array.new
    m = Array.new
    grid.each_with_index do |e,i|
      if e.include? 'p'
        py = e.index('p')
        p = i, py if py
      elsif  e.include? 'm'
        my = e.index('m')
        m = i, my if my
      end
    end
      rows = p[0].to_i - m[0].to_i
      cols = p[1].to_i  - m[1].to_i
      directions = []
      directions.join(
        if rows < 0
          puts 'UP' * rows.abs()
        else
          puts 'DOWN' * rows.abs()
        end)
        directions1 = []
        directions1.join(
        if cols < 0
          puts 'LEFT' * cols.abs()
        else
          puts 'RIGHT' * cols.abs()
        end)
        # Need to handle new line characters 
        # 5
        # ----p
        # -----
        # -----
        # -----
        # m----
        # UPUPUPUP
        # RIGHTRIGHTRIGHTRIGHT
    puts directions
    puts directions1
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
