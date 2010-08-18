

class Comentario < ActiveRecord::Base

    validates_presence_of :conteudo
    belongs_to :comentavel, :polymorphic => true

end


