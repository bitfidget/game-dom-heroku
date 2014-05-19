GameOfDom::Application.routes.draw do
  
  root :to => 'home#index'

  get '/ajax-messages/welcome' => 'messages#welcome'
  get '/ajax-messages/fight' => 'messages#fight'
  get '/ajax-messages/finish' => 'messages#finish'
  
  resources :battles

  resources :divs

  resources :pages

end
