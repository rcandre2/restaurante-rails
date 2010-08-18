class CreateComentarios < ActiveRecord::Migration
  def self.up
    create_table :comentarios do |t|
        t.text :conteudo
        t.integer :comentavel_id
        t.string :comentavel_type
        t.timestamps
    end
  end

  def self.down
    drop_table :comentarios
  end
end
