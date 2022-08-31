Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :assignments, only: %i[index show update] do
    resources :tasks, only: %i[index show update] do
      resources :flashcards, only: %i[index show update]
    end
  end
  resources :users, only: :show
end
