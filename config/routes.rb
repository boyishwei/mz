Rails.application.routes.draw do
  #root 'welcome#index'
  root 'application#render_404'
  get "*a" => "application#render_404"
end
