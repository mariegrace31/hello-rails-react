Rails.application.routes.draw do
  root 'root#index'
  # Define the route for "/greeting"
  get '/greeting', to: 'root#greeting'
  namespace :api do
    namespace :v1 do
      get 'greetings/random', to: 'greetings#random'
    end
  end
end
