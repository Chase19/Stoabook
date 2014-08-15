Stoabook::Application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get "sign_up", to: "devise/registrations#new", as: :sign_up
    get "sign_in", to: "devise/sessions#new", as: :sign_in
    #get "#{current_user}", to: "devise/registrations#edit"
  end
  
  resources :statuses
  get "update_status", to: "statuses#new", as: :update_status
  root to: 'statuses#index'
end
