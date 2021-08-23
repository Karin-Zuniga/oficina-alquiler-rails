Rails.application.routes.draw do
  get 'espacios/listar'   , to: 'espacios#listar' 
  get 'espacios/crear'    , to: 'espacios#crear'
  post 'espacios/guardar' , to: 'espacios#guardar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #rutas inquilinos
  get 'inquilinos'            , to: 'inquilinos#listar'
  get 'inquilinos/crear'      , to: 'inquilinos#crear'
  get 'inquilinos/:id'        , to: 'inquilinos#mostrar'
  get 'inquilinos/:id/editar' , to: 'inquilinos#editar'
  

  post    'inquilinos/crear',  to: 'inquilinos#guardar'
  put     'inquilinos/:id',    to: 'inquilinos#actualizar'
  patch   'inquilinos/:id'     to: 'inquilinos#actualizar'
  delete  'inquilinos/:id'     to: 'inquilinos#eliminar'

end
