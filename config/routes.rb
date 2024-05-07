Rails.application.routes.draw do
  get 'blog' => 'blog#index'
  get 'blog/:id' => 'blog#show', as: :blog_show
  get 'blog/:id/edit' => 'blog#edit', as: :blog_edit
  get 'download_resume' => 'main#download_resume'
  devise_for :admins
  resources :posts do
    member do
      post :publish
    end
  end
  get 'main/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "main#index"
end
