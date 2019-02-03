Rails.application.routes.draw do
  #simple route
  get 'demo/index'
  get 'demo/hello'

  #default route may go away in future versions of rails
  #get ':controller(/:action(/:id))'

  #root route (overrides the generic ruby webpage with a specific action and controller)
  root 'demo#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
