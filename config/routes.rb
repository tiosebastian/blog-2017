Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'welcome/index' #define the routes
  root 'welcome#index' #setting the 'welcome' controller index action to the root of application
end 
