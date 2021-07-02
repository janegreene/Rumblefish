#!/bin/ruby
def column_moves(cols)
  if cols < 0
    ("LEFT," * cols.abs).split(',')
  elsif cols > 0
    ("RIGHT," * cols.abs).split(',')
  end
end
def row_moves(rows)
    if rows < 0
      ("UP," * rows.abs).split(',')
    elsif rows > 0
      ("DOWN," * rows.abs).split(',')
    end
end
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
  x = column_moves(cols)
  y = row_moves(rows)
  directions = []
  directions << y if !y.nil?
  directions << x if !x.nil?
  puts directions
end


m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
