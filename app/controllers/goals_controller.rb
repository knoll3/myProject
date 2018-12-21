class GoalsController < ApplicationController
	
	def index
		@goals = Goal.all
	end

	def new
		@goal = Goal.new
	end

	def create
		@goal = Goal.create(goal_params)
		redirect_to root_path
	end

	private

		def goal_params
			params.require(:goal).permit(:name, :target)
		end
end
