Hopjoy::Application.routes.draw do
  root :to => "home#index"
  get "/about" => "home#about"
  get "/projects/:slug" => "projects#show"
  get "/projects/:slug/:page" => "projects#lesson"

  resources :environments
  resources :languages do
    get ":environment", :action => "environment", :on => :member, :as => "environment"
  end
  
end
