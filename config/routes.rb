# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :elections, except: %i[new edit]
  resources :ballots, except: %i[new edit update]
  resources :choices, except: %i[new edit update]
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
