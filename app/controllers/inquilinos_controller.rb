class InquilinosController < ApplicationController
    def listar



    end


    def crear
        @inquilino = Inquilino.new
        @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)

    end
    
    def mostrar
        
        id_inquilino = params[:id]
        @inquilino = Inquilino.find(id_inquilino)

    end

    def editar
        id_inquilino = params[:id]
        @inquilino = Inquilino.find(id_inquilino)
        @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)


    end

    def guardar
        valores = params.require(:inquilino).permit(:nombre, :telefono, :rut, :espacio_id, :apellido)
        puts "================================"
        puts valores.inspect
        puts "================================"

        @inquilino = Inquilino.new(valores)
        
        if @inquilino.save
            redirect_to '/espacios/listar'
        else
            @espacios = Espacio.select(:id, :codigo).order(codigo: :asc)
            render :crear
        end

    end

    #put/patch
    def actualizar
        @inquilino = Inquilino.find(params[:id])
        valores = params.require(:inquilino).permit(:nombre, :apellido, :telefono, :rut, :oficina_id)
        if inquilino.update(valores)

        end

    end

    #delete
    def eliminar

    end
    

end
