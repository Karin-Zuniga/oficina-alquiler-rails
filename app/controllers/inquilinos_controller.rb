class InquilinosController < ApplicationController

    before_action :validar_sesion
    before_action :buscar_inquilino, only: [:mostrar, :editar, :actualizar, :eliminar] 
    
    def listar
        @inquilinos = Inquilino.includes(:espacio).order(id: :asc)
    end


    def crear
        @inquilino = Inquilino.new
        @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)

    end
    
    def mostrar
        


    end

    def editar
        
        @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)


    end

    def guardar


        @inquilino = Inquilino.new(inquilino_params)
        
        if @inquilino.save
            redirect_to '/espacios/listar'
        else
            @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)
            render :crear
        end

    end

    #put/patch
    def actualizar
       
        if @inquilino.update(inquilino_params)
            redirect_to inquilino_path
        else
            @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)
            render :editar

        end

    end

    #delete
    def eliminar
        
        @inquilino.destroy
        redirect_to action: :listar
    end

    private

    def inquilino_params
        return params.require(:inquilino).permit(:nombre, :apellido, :telefono, :rut, :oficina_id)
    end    

    def buscar_inquilino
        @inquilino = Inquilino.find(params[:id])
        
    end

end
