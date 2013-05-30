NotANinja::Application.routes.draw do
  root :to => "tweets#index"
  resources :tweets
  match '/api/(/:action(/:id(/:command)))', :to => Api
end
