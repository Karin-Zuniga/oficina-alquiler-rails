Rails.application.routes.draw do
  get 'espacios/listar', to: 'espacios#listar' 
  get 'espacios/crear', to: 'espacios#crear'
  post 'espacios/guardar', to: 'espacios#guardar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
