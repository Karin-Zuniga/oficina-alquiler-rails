class Espacio < ApplicationRecord
    has_many :inquilinos
    
    before_validation(:cambiar_a_mayusculas)


    validates :codigo, uniqueness: true
    validates :codigo, presence: true
    
    validates :precio, presence: true

    private
    def cambiar_a_mayusculas
        puts "------------------------"
        puts self.codigo.upcase!
        puts self.inspect
        puts "------------------------"
    end


end
