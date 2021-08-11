Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :orders, only: [:index, :show] do
    member do
        delete :cancel
        # DELETE /orders/2/cancel
    end

    collection do
        delete :cancel
        # DELETE /orders/cancel
    end
end
                    
  resources :notes
end
