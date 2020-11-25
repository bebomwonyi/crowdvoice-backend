Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :articles
      resources :likes
      resources :comments
      resources :comment_box
      resources :save_articles
      resources :user_articles
    end
  end
end
