Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts',to:'posts#index'
  get 'posts/new',to:'posts#new'
  post 'posts/new', to:'posts#create'
  get 'post/:id', to: 'posts#show'
  get 'post/del/:id', to: 'posts#del'
  get 'post/edit/:id', to: 'posts#edit'
  put 'post/edit/:id', to: 'posts#update'
end
