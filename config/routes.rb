# frozen_string_literal: true

# @see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  namespace :v1 do
    get 'arc_gis', to: 'arc_gis#index'
  end
end
