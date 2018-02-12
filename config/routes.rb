Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :recipes
  	get "/recipes/other_param/:other_param", to: "recipes#show", as: "other_param_recipes"

  root "recipes#index"


end
