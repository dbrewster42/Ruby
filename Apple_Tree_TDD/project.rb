class Tree
  attr_accessor :age
  attr_reader :height, :apples
  def initialize age=4, height=10, apples=2
  	@age = age
  	@height = height
  	@apples = apples
  end
  def year_gone_by
  	@age += 1
  	@height = (@height * 1.1).to_i
  	if @age > 3 && @age < 11
  		@apples += 2
  	end
  end
  def info
  	p "#{@age}, #{@height}, #{@apples}"
  end
  def pick_apples
  	@apples = 0
  end
end
tree = Tree.new
tree.age = 5
puts tree.age