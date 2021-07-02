#!/bin/ruby

def displayPathtoPrincess(n,grid)

    p = Array.new
    m = Array.new
    grid.each_with_index do |e, y|
      if e.include? 'p'
        px = e.index('p')
        p = px, y if px
      elsif  e.include? 'm'
        mx = e.index('m')
        m = mx, y if mx
      end
    end
    rows = m[0].to_i - p[0].to_i
    cols = m[1].to_i  - p[1].to_i
    rowMoves = []
    directions = []
    rowMoves.append(
      if rows < 0
        puts 'UP ' * rows.abs()
      elsif rows > 0
        puts 'DOWN ' * rows.abs()
      end
    )
    columnMoves = []
      if cols < 0
        columnMoves << 'LEFT ' * cols.abs()
      elsif cols > 0
        columnMoves <<  'RIGHT ' * cols.abs()
      end
    return directions = rowMoves + columnMoves
    require "pry"; binding.pry
end

def nextMove(n,r,c,grid)
  moves = displayPathtoPrincess(n,grid)
  require "pry"; binding.pry
# need to deal with nils and trim to first word, beware of puts vs return
# [1] pry(main)> moves
# => [nil, "LEFT LEFT "]
# [2] pry(main)>


  puts "0 0"
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
