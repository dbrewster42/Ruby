a = ["ant", "anteater", "apple", "barracuda", "bear", "bobcat"] 
# puts a.any? { |word| word.length < 3 }
# # a.each { |word| print word, " WOW " } puts
# puts (1..5).collect { |i| i*i }
# puts (1..35).detect { |i| i %5 == 0 and i % 7 == 0 }
# puts (1..10).find_all { |i| i % 3 == 0 }
# puts (1..10).reject { |i| i % 3 == 0 }
# 5.upto(10) { |i| print i, " " }
puts a.include?("ant")
puts a.last
puts a.max
puts a.min
b = ["1", "3", "5", "2"]
puts b.last
puts b.max
puts b.min