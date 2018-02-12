class CreateEnts < ActiveRecord::Migration[5.1]
  def change
    create_table :ents do |t|
      t.date :fecha
      t.references :prof, foreign_key: true
      t.text :notas

      t.timestamps
    end
  end
end
