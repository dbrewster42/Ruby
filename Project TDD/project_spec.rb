require_relative 'project' 
# include our Project class in our spec file
RSpec.describe Student do  
  before(:each) do 
    @project1 = Student.new('Project 1', 'description 1')
    @project2 = Student.new('Project 2', 'description 2') 
    # create a new project and make sure we can set the name attribute
  end
  
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" 
    # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") 
    # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 
  it 'testing owner' do
  	@project2.owner = "George Washington"
  	expect(@project1.owner).to eq(nil)
  	expect(@project2.owner).to eq("George Washington")
  end
  it 'testing tasks' do
  	@project1.add_tasks("do the laundry")
  	@project1.add_tasks("wash the car")
  	@project1.add_tasks("make money")
  	expect(@project1.show_tasks).to eq(["do the laundry", "wash the car", "make money"])
  	expect{@project1.print_tasks}.to output(["do the laundry", "wash the car", "make money"])
  end

end