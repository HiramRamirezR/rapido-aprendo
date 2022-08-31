Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :tasks, only: %i[index show] do
    resources :flashcards, only: :index
    resources :assignment, only: :create
  end
end
