Rails.application.routes.draw do
  resources :moderators
  root 'users#index'
  get '/users/sorting_hat' => 'users#sorting_hat'
  get '/moderator-email' => 'moderators#moderator_email'
  resources :users do
    member do
      get :confirm_email
    end
  end
  default_url_options :host => 'localhost:3000'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
