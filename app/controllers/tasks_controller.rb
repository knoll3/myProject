class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def create
		task = Task.create(task_params)
		redirect_to root_path
	end

	private

		def task_params
			params.require(:task).permit(:name, :description)
		end
end
