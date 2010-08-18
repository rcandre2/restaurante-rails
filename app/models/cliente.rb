class Cliente < ActiveRecord::Base
#    validates_length_of :idade, :maximum => 150, :message => "Muito velho"
#    validates_length_of :idade, :minimum => 0, :message => "Ainda não nasceu?"
    validates_presence_of :nome, :message => "Informe o nome"
    validates_uniqueness_of :idade, :greather_than => 0, :less_than => 100, :message => " - deve ser um numero entre 0 e 100"
    has_many :qualificacoes
    has_and_belongs_to_many :pratos
end
