Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/' => 'tasks#index'
get '/tasks/new' => 'tasks#new'
post '/tasks/create' => 'tasks#create'
post '/tasks/:id/edit' => 'tasks#edit'
post '/tasks/update' => 'tasks#update'
delete '/tasks/:id/destroy' => 'tasks#destroy'
end
