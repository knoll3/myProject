class TasksController < ApplicationController

	def index
		render json: {goals: Goal.all, tasks: Task.all}
	end

	def new
		@task = Task.new
	end

	def create
		@goal = Goal.find_by_id(params[:goal_id])
		@goal.tasks.create(task_params)
		redirect_to root_path
	end

	private

		def task_params
			params.require(:task).permit(:name, :description, :status)
		end
end
