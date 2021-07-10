Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :bands do
        resources :members
      end
    end

    namespace :v2 do
      resources :members
      resources :bands
    end


  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
