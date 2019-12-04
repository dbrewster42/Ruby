class Student
    @@number_of_students = 0
    attr_accessor :ninja_skill, :name, :owner
    def initialize(name, description, owner=nil)
        # @student_id = id 
        @student_name = name 
        @description = description
        @owner = owner
        @tasks = []
        # @student_age = age 
        # @student_favorite_language = favorite_language 
        @@number_of_students +=  1
    end
    def add_tasks task
        @tasks.push(task)
    end 
    def show_tasks
        return @tasks
    end
    def print_tasks
        print "#{@tasks}"
    end
    def take_magic_potion years
        @student_age -= years
        puts "The student is now #{@student_age} years old"
        self
    end

    def learn_ruby
        @student_favorite_language = "Ruby"
        @student_age += 1
        puts "The student is now #{@student_age} years old and their favorite language is now #{@student_favorite_language}."
        self
    end
    def display_all
        puts "The students name is #{@student_name}"
        puts "He/She is #{@student_age} years old"
        puts "He/She has a ninja rating of #{@ninja_skill}" unless self.ninja_skill==nil
    end 
    def elevator_pitch
        # puts "#{@student_name}, #{@description}"
        return "#{@student_name}, #{@description}"
    end
end
# bre = Student.new(1, "Bre", 32, "Java")
# bre.take_magic_potion(5)
# bre.learn_ruby
# bre.display_all
# bre.ninja_skill = "Novice"
# puts bre.ninja_skill
# bre.name = "Apollo Creed"
# puts bre.name
# bre.display_all
devon = Student.new("Devon", "All for the money")
# devon.display_all
devon.elevator_pitch