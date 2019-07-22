Rails.application.routes.draw do
  devise_for :utilisateurs
  resources :articles do
    member do
      put "like", to: "articles#upvote"
      put "unlike", to: "articles#downvote"
    end
  end
  root "articles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
