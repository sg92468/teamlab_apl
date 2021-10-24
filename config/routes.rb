Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users, :controllers => {
   :registrations => 'users/registrations',
   :sessions => 'users/sessions',
   :passwords => 'users/passwords'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  resources :post_texts
  resources :users, only: [:show, :edit, :update]
end
