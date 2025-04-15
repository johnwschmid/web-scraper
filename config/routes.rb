Rails.application.routes.draw do
  root "pages#index"
  resources :pages do
    resource :result, only: [:create]
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
