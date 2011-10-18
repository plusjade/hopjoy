Hopjoy::Application.routes.draw do
  root :to => "home#index"
  get "/about" => "home#about"
  get "/projects/:slug" => "projects#show"
  get "/projects/:slug/:page" => "projects#lesson"

  resources :environments
  
  get "/languages/:slug" => "home#languages"
  get "/languages/:slug/:environment" => "home#language_environment"

end
