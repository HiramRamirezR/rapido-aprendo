Rails.application.routes.draw do
  get '/my_flashcards', to: "flashcards#my_flashcards"
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :tasks, only: %i[index show] do
    resources :flashcards, only: :index
    resources :assignment, only: :create
  end
  resources :users, only: :show
end
