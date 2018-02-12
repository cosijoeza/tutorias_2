class CreateProfs < ActiveRecord::Migration[5.1]
  def change
    create_table :profs do |t|
      t.string :nombre
      t.string :usuario
      t.string :correo
      t.string :instituto

      t.timestamps
    end
  end
end
