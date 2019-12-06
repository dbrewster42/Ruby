require "stringer/version"

module Stringer
	def self.spacify *strings
    	string = ""
    	count = 0
    	strings.each do |s|        	
        	if count != 0
        		string += " "
        	end
        	string += s
        	count += 1
    	end
    	# puts strings.length
    	# puts "ya ya #{count}"
    	string
	end
	def self.minify str, num
 		# str.each_char {|n| }
 		str[0...num]
 	end
 	def self.subst phrase, old, instead
 		p phrase.sub(old, instead) 		
 	end
 	def self.tokenize str
 		str.split(" ")
 	end
 	def self.removify str, remov
 		str.slice!(remov)
 		str
 	end
end
# class Error < StandardError; end

Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza"