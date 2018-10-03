#!/usr/bin/env ruby
# This script evenly, randomly distributes a set of values
# across a range of cells.
#
# For example, given an output size of 10 rows and 10 columns,
# distributing 5 values would result in each value being placed
# in 20 randomly-selected cells.
#
# The result will be saved in a CSV file.
require "csv"

rows = cols = values = runs = 0
path = ""

loop do
  puts "Number of rows?"
  rows = gets.chomp.to_i
  break if rows > 0
  puts "Invalid row count, sorry."
end

loop do
  puts "Number of columns?"
  cols = gets.chomp.to_i
  break if cols > 0
  puts "Invalid columns count, sorry."
end

loop do
  puts "Number of values to distribute?"
  values = gets.chomp.to_i

  if values == 0
    puts "Invalid columns count, sorry."
  elsif (rows * cols) % values != 0
    puts "#{values} cannot be evenly distributed over #{rows}x#{cols} cells."
  else
    break
  end
end

loop do
  puts "Number of times to run the distribution?"
  runs = gets.chomp.to_i
  break if runs > 0
  puts "Invalid number of runs, sorry."
end

loop do
  puts "Where should I save the result?"
  path = gets.chomp

  if path.length == 0
    puts "Invalid file path, sorry."
  elsif File.exist?(path)
    puts "#{path} already exists; should I stomp it? [y/n]"
    stomp = gets.chomp
    break if stomp == "y"
  else
    break
  end
end

# Create a 2D array filled with nils to store the result.
results = []
runs.times do
  r = []
  rows.times do
    r << Array.new(cols)
  end
  results << r
end

# For each value, choose a cell at random. If it's empty,
# fill in the value; otherwise, continue picking another
# cell randomly until an empty one is found.
#
# Repeat until all values have been distributed.
results.each do |r|
  values.times do |i|
    ((rows * cols) / values).times do
      loop do
        row = Random.rand(rows)
        col = Random.rand(cols)

        if r[row][col].nil?
          r[row][col] = i+1
          break
        end
      end
    end
  end
end

# Write the result to a CSV file.
CSV.open(path, "wb") do |csv|
  results.each do |r|
    r.each do |row|
      csv << row
    end
    csv << []
  end
end
