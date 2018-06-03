puts "Привет! Как тебя зовут?"
name = gets.chomp
name.upcase!

puts "Какой у тебя рост в сантиметрах?"
h1 = gets.chomp.to_i

w1 = h1 - 110

if w1 < 0
  puts "Ваш вес уже оптимальный!"
else
  puts "Многоуважаемый(ая), #{name}! Твой идеальный вес - #{w1} кг.!"
end
