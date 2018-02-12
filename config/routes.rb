Rails.application.routes.draw do
  resources :tutors
  resources :historials
  resources :prus
  resources :pruebas
  resources :admins
  resources :ents
  resources :alum_mats
  resources :mats
  resources :alums
  resources :idioms
  resources :profs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
