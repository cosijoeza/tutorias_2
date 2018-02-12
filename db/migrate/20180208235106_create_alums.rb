class CreateAlums < ActiveRecord::Migration[5.1]
  def change
    create_table :alums do |t|
      t.integer :matricula
      t.string :nombre
      t.string :apellidos
      t.string :foto
      t.string :correo
      t.references :prof, foreign_key: true
      t.references :idiom, foreign_key: true

      t.timestamps
    end
  end
end
