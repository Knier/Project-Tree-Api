Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/codes/:id', to: 'codes#show'
  get '/codes', to: 'codes#index'
  post '/codes/run', to: 'codes#run'

  get '/template_codes/:id', to: 'template_codes#show'
  post '/template_codes/', to: 'template_codes#create'


end
