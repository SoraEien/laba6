# frozen_string_literal: true

require './laba6-1/laba6-1_code.rb'

puts "Enter the desired precision (e.g. 0.001 or 0.0001):"
precision = gets.chomp.to_f

puts "Enter the radius:"
radius = gets.chomp.to_f

area = calculate_area(radius, precision)
puts "The area of the circle with the specified precision is: #{area}"
