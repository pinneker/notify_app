Rails.application.routes.draw do
  controller :sessions do
    get '/finalize' => :finalize
    get '/login' => :new
    post '/login' => :create
    delete '/logout' => :destroy
  end
  root :to => 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
