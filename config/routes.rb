Rails.application.routes.draw do
  resources :teacher_clocks, except: :show
  root 'teacher_clocks#index'
end
