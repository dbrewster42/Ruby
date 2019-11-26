a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]





puts "You have "+ names.length.to_s + " names in the 'names' array"
for i in names
	puts 'The name is ' + i[:first_name]+' '+i[:last_name]
	puts "The name is #{i[:first_name]} #{i[:last_name]}"
end

def count_ways (n, currStep=0)
	if currStep > n
		return 0
	end
	if currStep == n
		return 1
	end
	return (count_ways(n, currStep+1) + count_ways(n, currStep+2))
end

puts count_ways 8