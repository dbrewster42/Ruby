require_relative 'project'
RSpec.describe Tree do

  before(:each) do
    @tree = Tree.new
    
  end

  it "has a getter and setter for age attribute" do
    tree2 = Tree.new
    tree2.age = 5
    expect(tree2.age).to eq(5)
  end
  it "age attribute" do
    @tree.age = 5
    expect(@tree.age).to eq(5)
  end
  it "height attribute" do
    expect(@tree.height).to eq(10)
    expect{@tree.height=10}.to raise_error(NoMethodError)
  end
  it 'apple count attribute' do
    expect(@tree.apples).to eq(2)
    expect{@tree.apples=4}.to raise_error(NoMethodError)
  end
  context "year gone by apples" do
    it "is younger than 3" do
      @tree.age = 2
      @tree.year_gone_by
      expect(@tree.info).to eq("3, 11, 2")
    end
    it "is right age" do
      @tree.year_gone_by
      expect(@tree.info).to eq('5, 11, 4')
    end
    it "is older than 10" do
      @tree.age = 12
      @tree.year_gone_by
      expect(@tree.info).to eq('13, 11, 2')
    end
  end
  it "pick apples" do
    @tree.year_gone_by
    @tree.year_gone_by
    @tree.year_gone_by
    expect(@tree.info).to eq('7, 13, 8')
    @tree.pick_apples
    expect(@tree.apples).to eq(0)
  end
   
  
end