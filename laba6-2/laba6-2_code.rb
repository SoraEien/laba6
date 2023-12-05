# frozen_string_literal: true

def calculate_area(radius, precision)
  n = 4
  area = Math::PI * radius * radius
  current_area = 0

  enumerator = Enumerator.new do |yielder|
    loop do
      n += 1
      current_area = 0.5 * radius * radius * (Math.sin(2 * Math::PI / n)) * n
      yielder.yield current_area
    end
  end

  enumerator.each do |value|
    break if (value - area).abs < precision
  end

  current_area
end