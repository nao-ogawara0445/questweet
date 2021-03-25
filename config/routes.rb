Rails.application.routes.draw do
  get 'user/edit'
  devise_for :users
  get 'questions/index'
  get 'comments/index'
  root to: "questions#index"
  resources :users ,only:[:edit, :update]
  resources :questions,only:[:index,:new, :create]
end
