class EspaciosController < ApplicationController
  def listar
    @lista_espacios = Espacio.all.order(id: :asc)
  end

  def crear
    @espacio_nuevo = Espacio.new
  end

  def guardar
    valores = params.require(:espacio).permit(:codigo, :precio, :esta_alquilada)
    @espacio_nuevo = Espacio.new(valores)
    if @espacio_nuevo.save
      redirect_to action: "listar"
    else
      render :crear
    end
  end
end
