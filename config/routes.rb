Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }
  root 'static_pages#index'
  get 'static_pages/index'
  get 'r/:url' => 'subreddit#view'
  get 'u/:username' => 'user#view'
  get 'p/:id' => 'post#view'

  # Priority based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
end
