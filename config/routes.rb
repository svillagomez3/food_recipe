Rails.application.routes.draw do
  get'/food_recipe/:id' => 'application#show'
  get '/new_recipe' => 'application#new'
  get '/create_recipe' => 'application#create'
  get '/recipe/:id/edit' => 'application#edit'
  get '/update_recipe/:id' => 'application#update'
  get '/recipe/:id/destroy' => 'application#destroy'
end
