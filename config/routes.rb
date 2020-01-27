Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    #games
    get '/games/:id' => 'games#show'
    post '/games/' => 'games#create'
    delete 'games/:id' => 'games#destroy'

    #players
    get '/players/:id' => 'players#show'
    patch '/players/:id' => 'players#update'
  end
end
