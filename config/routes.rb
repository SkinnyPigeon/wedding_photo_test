Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'photos#index'

  post 'photos' => 'photos#create', defaults: {format: :json}
  get 'photos' => 'photos#index', defaults: {format: :json}
end
