Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :contracts, only: [:index, :update, :show], defaults: { format: :json } do
    collection do
    end
    member do
    end
  end

  root to: 'contracts#index'

end
