Rails.application.routes.draw do
  get 'espacios/listar'   , to: 'espacios#listar', as: 'oficinas'
  get 'espacios/crear'    , to: 'espacios#crear'
  post 'espacios/guardar' , to: 'espacios#guardar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #rutas inquilinos
  get 'inquilinos'            , to: 'inquilinos#listar' , as: 'inquilinos'
  get 'inquilinos/crear'      , to: 'inquilinos#crear'  , as: 'nuevo_inquilino'
  get 'inquilinos/:id'        , to: 'inquilinos#mostrar', as: 'inquilino'
  get 'inquilinos/:id/editar' , to: 'inquilinos#editar' , as: 'editar_inquilino'
  

  post    'inquilinos'      ,    to: 'inquilinos#guardar'
  put     'inquilinos/:id'  ,    to: 'inquilinos#actualizar'
  patch   'inquilinos/:id'  ,    to: 'inquilinos#actualizar'
  delete  'inquilinos/:id'  ,    to: 'inquilinos#eliminar'


  get     'sesiones', to: 'sesiones#login', as: 'login'
  post    'sesiones', to: 'sesiones#iniciar'
  delete  'sesiones', to: 'sesiones#cerrar'
end
