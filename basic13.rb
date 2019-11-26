# for i in 1..255
# 	puts i
# end

def odds n
	(1..n).step(2).to_a
end


def odder n
	(1..n).reject { |i| i % 2 == 0}
end


def sum n
	sum = 0
	for i in 1..n
		sum += i
		puts "#{i} sum: #{sum}"
	end
end
# sum 17

x= [1,3,5,7,9,13]
# for i in 0...x.length
# 	puts x[i]
# end


def max arr
	max = arr[0]	
	for i in 1...arr.length
		if arr[i] > max
			max = arr[i]
		end
	end
	return max
end
# puts max [1,3,5,7,9,13]
# puts max [-3, -5, -7]
def average arr
	sum = 0
	for i in 0...arr.length
		sum += arr[i]
	end
	average = sum / arr.length
end
# puts average [1,3,5,7,9,13]
# puts average [-3, -5, -7]
def oddarr n
	newArr = []
	for i in (1..n).step(2)
		newArr.push(i)
	end
	return newArr
end

# print oddarr 17
def greatY arr, n
	count = 0
	for i in 0...arr.length
		if arr[i] > n
			count += 1
		end
	end
	return count
end
# puts greatY [1, 3, 5, 7], 3

def squares arr
	for i in 0...arr.length
		arr[i] *= arr[i]
	end
	return arr
end
def nonegative arr
	for i in 0...arr.length
		if arr[i] < 0
			arr[i] = 0
		end
	end
	return arr
end

# puts nonegative [1, 5, 10, -2, -9]
def shift arr
	for i in 0...arr.length-1
		arr[i]= arr[i+1]
	end
	arr[arr.length-1] = 0
	return arr
end
# puts shift [1, 5, 10, -2, -9]

def mma arr
	min = arr[0]
	max = arr[0]
	sum = 0
	for i in 0...arr.length
		sum += arr[i]
		if arr[i] > max
			max = arr[i]
		elsif arr[i] < min
			min = arr[i]
		end
	end
	avg = sum / arr.length
	newHash = {"minimum" => min, "maximum" => max, "average" => avg}
	return newHash
end
			

def number_to_string arr
	for i in 0...arr.length
		if arr[i] < 0
			arr[i] = "Dojo"
		end
	end
	return arr
end
puts mma [1, 5, 10, -2, -9]
puts number_to_string [1, 5, 10, -2, -9]