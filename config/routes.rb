Rails.application.routes.draw do
  resources :messages

  get 'class/showClass'

  get 'teacher/:name' => "teacher#showTeacher"
  get 'class/:name' => "class#showClass"

  root 'welcome#index'

  get "/about" => "welcome#about"

  #root 'application#render_404'
  get "*a" => "application#render_404"
end
