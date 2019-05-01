Rails.application.routes.draw do
  resources :things do
    collection { post :import}
  end

  root to: "things#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
