# Прямоугольный треугольник. 

puts "Для опредения типа треугольника введите длину первой стороны, в см."
a1 = Float(gets.chomp)

puts "Введите длину второй стороны, в см."
b1 = Float(gets.chomp)

puts "Введите длину третьей стороны, в см."
c1 = Float(gets.chomp)

rectangular = "прямоугольный"
not_rectangular = "не прямоугольный"
isosceles = "равнобедренный"

# определяем бОльшую сторону
if a1 > b1  && a1 > c1
	big, short1, short2 = a1, b1, c1
elsif b1 > a1  && b1 > c1
	big, short1, short2 = b1, a1, c1
elsif c1 > b1  && c1 > a1
	big, short1, short2 = c1, a1, b1
else big, short1, short2 = a1, b1, c1
end
			
# определяем прямоугольность
if big == short1 && short1 == short2
	puts "Этот треугольник #{isosceles} и равносторонний, но #{not_rectangular}."
elsif (big**2) == (short1**2 + short2**2) && short1 == short2
	puts "Этот треугольник #{rectangular} и #{isosceles}."
elsif (big**2) == (short1**2 + short2**2) && short1 != short2
	puts "Этот треугольник #{rectangular} и не #{isosceles}."
elsif (big**2) != (short1**2 + short2**2) && short1 == short2
	puts "Этот треугольник #{not_rectangular}, но #{isosceles}."
else puts "Треугольник #{not_rectangular}."
end
