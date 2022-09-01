Rails.application.routes.draw do
  get 'flashcards/index'
  devise_for :users
  root to: "pages#home"

  resources :tasks, only: %i[index show] do
    resources :flashcards, only: :index
    resources :assignment, only: :create
  end
  resources :users, only: :show
end
