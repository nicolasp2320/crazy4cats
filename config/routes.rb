Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
    member do
      post :like, to: 'likes#create'
      post :dislike, to: 'likes#dislike'
    end
  end
  
  
 
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  
  get 'homes/index'
  
  root to: "homes#index"
end
