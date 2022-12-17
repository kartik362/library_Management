Rails.application.routes.draw do
  devise_for :authlogins, :controllers => { registrations: 'registrations' }

  devise_scope :authlogin do  
    get '/authlogins/sign_out' => 'devise/sessions#destroy'     
 end
  get 'userpage' => 'users#UserPage'
  get 'bookissue' => 'users#BookIssue'
  get "users/show"
  get "users/login"
  get "users/userpage"
  get "users/bookissue"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  resources :users

  

end