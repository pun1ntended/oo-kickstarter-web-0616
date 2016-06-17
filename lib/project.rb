class Project
	attr_accessor :backers, :title, :name, :backed_projects, :backer
	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(name)
		backer = Backer.new(name).name
		@backers << backer
		backer.backed_projects << self

		
	end
end