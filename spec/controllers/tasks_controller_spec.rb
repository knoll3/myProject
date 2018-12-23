require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe "tasks#index action" do
    it "should successfully show the page" do

      # Set up the database
      goal = FactoryBot.create(:goal)
      task1 = FactoryBot.create(:task)
      task2 = FactoryBot.create(:task)

      # Go to the tasks index page
      get :index

      # Check values
      expect(response).to have_http_status(:success)
      response_value = ActiveSupport::JSON.decode(@response.body)
      expect(response_value.count).to eq(2)
    end
  end

  describe "tasks#new action" do
  	it "should successfully show the new form" do 

      # Go to the tasks new page
  		get :new
  		expect(response).to have_http_status(:success)
  	end
  end

  describe "tasks#create action" do
  	it "should successfully create a new task in the database" do 

      # Create goal in database
      goal = FactoryBot.create(:goal)

      # Define task values
      task_name = "Application"
      task_description = "This is the description of the task."
      task_status = :incomplete

      # Make a create request
  		post :create, params: {goal_id: goal.id, 
                             task: {name: task_name, 
                                    description: task_description,
                                    status: task_status }}

      # Check values                              
  		expect(response).to redirect_to root_path
  		task = Task.last
  		expect(task.name).to eq(task_name)
      expect(task.description).to eq(task_description)
      expect(task.status).to eq(task_status.to_s)
  	end
  end
end
