class EspaciosController < ApplicationController
 
  before_action :validar_sesion
  
  def listar
    @lista_espacios = Espacio.includes(:inquilinos).order(id: :asc)
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
