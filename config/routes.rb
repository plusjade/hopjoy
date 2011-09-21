Hopjoy::Application.routes.draw do
  root :to => "home#index"
  get "/about" => "home#about"
  get "/projects/:slug" => "projects#show"
  get "/projects/:slug/:page" => "projects#lesson"

  get "/pages/:slug" => "pages#show"
  
  get "/environments(/:slug)" => "home#environments"
  get "/languages/:slug" => "home#languages"
end
