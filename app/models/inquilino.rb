class Inquilino < ApplicationRecord
  belongs_to :espacio

  after_save :verificar_disponibilidad_oficina
  after_destroy :verificar_disponibilidad_oficina

  validates(:nombre, presence: true)
  validates(:apellido, presence: true)
  validates(:telefono, presence: true)
  
  validates(:rut, presence: true)
  validates(:rut, uniqueness: true)

  private
  def verificar_disponibilidad_oficina
    if self.espacio.inquilinos.empty?
      self.espacio.esta_alquilada = false
    else
      self.espacio.esta_alquilada = true
    end

    self.espacio.save
    
  end




end
