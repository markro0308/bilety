Rails.application.routes.draw do
  devise_for :users
 # get 'events/index'
 # get 'events/create'
 # get 'events/show'

 #kod poniższy będzie działać ale trzeba zmienić ścieżki w linkach na te zgodne z rails routes
 # get '/events' => 'events#index'
 # get 'events/new'
 # get 'events/:id' => 'events#show'
 # post '/events' => 'events#create'

 #inna metoda: routing zorientowany na zasoby
 resources :events, :only=>[:index, :new, :create, :show]

  resources :tickets
#  root "tickets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
