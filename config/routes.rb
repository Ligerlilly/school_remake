Rails.application.routes.draw do

  resources :chapters
  resources :lessons
  resources :sections
  root 'lessons#index'
end
