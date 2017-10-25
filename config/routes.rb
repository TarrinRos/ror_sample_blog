Rails.application.routes.draw do
  get 'home/index'
  get '/' => 'home#index'
  get 'about' => 'pages#about'
  get 'terms' => 'pages#terms'
  resource :contacts, only: %i[new create], path_names: { new: '' }
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
