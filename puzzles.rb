# arr = [3,5,1,2,7,9,8,13,25,32]
# sum = 0
# for i in 0...arr.length
# 	sum += arr[i]
# end
# puts sum
# newArr = []
# for i in 0...arr.length
# 	if arr[i] > 10
# 		newArr.push(arr[i])
# 	end
# end
# puts newArr
# arr.collect { |i| i > 10 }
# print arr

# arr = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
# # arr.shuffle!
# # puts arr
# print arr.find_all { |word| word.length > 4 }
# puts arr.last
# puts arr.first
def string_world
	for a in 0..9
		a = ""
		for i in 0...5
			a += (65+rand(26)).chr
		end
	puts a
	end
end

def randarr
	arr = []
	for i in 0...10
		arr.push(rand(55..100))
	end
	arr.sort!
	puts arr.first
	puts arr.last
	print arr
end
randarr

