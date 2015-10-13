Rails.application.routes.draw do

  resources :chapters
  resources :lessons
  resources :sections
  root 'chapters#show', id: 1
  devise_for :users
  resources :users
end
