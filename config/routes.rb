Rails.application.routes.draw do
  root to: 'site#home'
  get '/become_host' => 'site#become_host'
  get '/help' => 'site#help'
  get '/sign_up' => 'site#sign_up'
  get '/login' => 'site#login'  
  resources :flats
end
