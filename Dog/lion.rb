require_relative 'mammal'

class Lion < Mammal
	def initialize health = 170
		@health = health
	end
	def fly
		@health -= 10
		self
	end
	def attack_town
		@health -= 50
		self
	end
	def eat_human
		@health += 20
		self
	end
end
leo = Lion.new
leo.display_health.fly.attack_town.eat_human.fly.attack_town.eat_human.display_health