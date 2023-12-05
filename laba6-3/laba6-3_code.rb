# frozen_string_literal: true

def intprg(a, b, n, &block)
  sum = 0
  delta_x = (b - a).to_f / n
  n.times do |i|
    xi = a + i * delta_x
    sum += block.call(xi)
  end
  sum * delta_x
end

# Вычисление интеграла с использованием передаваемого lambda-выражения
integral1 = intprg(0, 1, 100) { |x| Math.exp(x) / (x + 1) }
puts "Integral 1 (using lambda): #{integral1}"

integral2 = intprg(0, 2, 100) { |x| x * (x - 1) }
puts "Integral 2 (using lambda): #{integral2}"

# Вычисление интеграла с использованием блока
integral3 = intprg(0, 1, 100) do |x|
  Math.exp(x) / (x + 1)
end
puts "Integral 1 (using block): #{integral3}"

integral4 = intprg(0, 2, 100) do |x|
  x * (x - 1)
end
puts "Integral 2 (using block): #{integral4}"