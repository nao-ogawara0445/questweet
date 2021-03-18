Rails.application.routes.draw do
  get 'user/edit'
  devise_for :users
  get 'question/index'
  get 'comments/index'
  root to: "question#index"
  resources :users ,only:[:edit, :update]
end
