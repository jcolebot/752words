Rails.application.routes.draw do
  resources :plants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "writings#index", as: :my_home_page
  get "/bloop/:writing_id" => "writings#show"
  # this is the 'new' page for writings
  get "/puppy" => "writings#kitten"
  post "/writings" => "writings#create"
end
