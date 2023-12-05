# frozen_string_literal: true

def calculate_area(radius, precision)
  n=4
  area = Math::PI * radius * radius
  current_area = 0
  loop do
    n += 1
    current_area = 0.5 * radius * radius * (Math.sin(2*Math::PI/n)) * n
    break if (current_area - area).abs < precision
  end
  current_area
end