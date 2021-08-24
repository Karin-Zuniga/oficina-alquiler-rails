module ApplicationHelper
    def validar_sesion
        #obtener una cookie que se llama admin_id
        #si la coookie existe entonces
            #voy a buscar el usuario en la base de datos
            #crear una variable con @admin para tenerla disponible en toda la aplicacion
        #si no existe la cookie o el usario
            # redireccionar al formulario para iniciar sesion
            
        if session[:admin_id]
            @admin = Administrador.find(session[:admin_id])
            
        else
            eliminar_cookie
            
        end
            
    
    rescue ActiveRecord::RecordNotFound
        eliminar_cookie
    end

    private
    def eliminar_cookie
        session[:admin_id] = nil
        redirect_to sesiones_path
    end

end    

