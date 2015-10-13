Rails.application.routes.draw do

  resources :chapters
  resources :lessons
  resources :sections
  root 'chapters#show', id: 1
end
