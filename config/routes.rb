DevBootFace::Application.routes.draw do
  get "posts/index"
  devise_for :users

  root 'home#index'

  end
