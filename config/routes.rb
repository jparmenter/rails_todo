TodoApp::Application.routes.draw do
  root 'static_pages#home'
  resources :todos, only: [:index]
end
