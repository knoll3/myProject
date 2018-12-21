Rails.application.routes.draw do
	root "goals#index"
	resources :goals, only: [:new, :create]
	resources :tasks
end
