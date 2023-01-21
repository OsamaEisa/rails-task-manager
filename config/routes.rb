Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list all tasks
  get '/tasks', to: 'tasks#index'

  # new task
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # show one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # create a new task
  post '/tasks', to: 'tasks#create'

  # view a task to edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # update a task
  patch '/tasks/:id', to: 'tasks#update'

  # delete a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
