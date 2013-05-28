NotANinja::Application.routes.draw do
  root :to => "tweets#index"
  resources :tweets
  match '/api/(:version(/:action(/:id(/:command))))', :to => Api
end
