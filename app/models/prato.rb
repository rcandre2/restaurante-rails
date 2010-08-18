class Prato < ActiveRecord::Base
    has_and_belongs_to_many :restaurantes
    has_one :receita
end
