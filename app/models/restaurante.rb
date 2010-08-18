class Restaurante < ActiveRecord::Base
    validates_presence_of :nome, :message => "Deve ser preenchido"
    validate :primeira_letra_maiuscula
    has_many :qualificacoes
    has_and_belongs_to_many :pratos
    has_many :comentarios, :as => :comentavel

    def <=> o
        self.nome.<=>(o.nome)
    end

private
    def primeira_letra_maiuscula
        errors.add( :nome, "primeira letra deve ser maiuscula") unless /^[A-Z].*/ =~ nome
    end

end
