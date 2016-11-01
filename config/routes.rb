Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pictures#index'

  post 'pictures' => 'pictures#create', defaults: {format: :json}
  get 'pictures' => 'pictures#index', defaults: {format: :json}
end
