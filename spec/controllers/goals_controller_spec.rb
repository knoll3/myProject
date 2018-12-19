require 'rails_helper'

RSpec.describe GoalsController, type: :controller do
  describe "goals#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "goals#new action" do
  	it "should successfully show the new form" do 
  		get :new
  		expect(response).to have_http_status(:success)
  	end
  end

  describe "goals#create action" do
    it "should successfully create a new goal in our database" do
      post :create, params: { goal: { name: "Applications", target: 7}}
      expect(response).to redirect_to root_path

      goal = Goal.last
      expect(goal.name).to eq("Applications")
      expect(goal.target).to eq(7)
    end
  end
end