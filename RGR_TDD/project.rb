class Project
  attr_accessor :name, :description
  
  def elevator_pitch
  	return "#{@name}, #{@description}"
  end
end