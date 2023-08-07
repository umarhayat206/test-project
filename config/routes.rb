# frozen_string_literal: true

# @see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  namespace :v1 do
    resources :species, only: [:index, :show] do 
      collection do
        get :get_locations
      end
    end
    resources :locations, only: [:index, :show] do 
      collection do
        get :get_species
      end
    end
  end
end
