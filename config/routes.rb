Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: %i[index new]
  get '/students/:id', to: 'students#show', as: 'student'
  post '/students', to: 'students#enroll'
end
