Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/checkin-checkout', to: 'rooms#index', as: 'index'
      post '/checkin-checkout', to: 'rooms#checkin', as: 'checkin'
      put '/checkin-checkout', to: 'rooms#checkout', as: 'checkout'
    end
  end
end
