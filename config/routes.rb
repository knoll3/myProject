Rails.application.routes.draw do
	root "tasks#index"
	resources :goals
	resources :tasks
end
