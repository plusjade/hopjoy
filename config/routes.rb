Hopjoy::Application.routes.draw do
  root :to => "home#index"
  get "/about" => "home#about"
  get "/projects/:permalink" => "projects#show"
  get "/pages/:slug" => "pages#show"
end
