Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  'game/index'
  post 'game/index', to: 'game#create'
  get  'game/list'
end
