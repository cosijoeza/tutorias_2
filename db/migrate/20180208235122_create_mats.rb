class CreateMats < ActiveRecord::Migration[5.1]
  def change
    create_table :mats do |t|
      t.string :nombre
      t.float :calif_1
      t.float :calif_2
      t.float :calif_3
      t.float :final
      t.float :ext_1
      t.float :ext_2
      t.float :esp
      t.string :semestre

      t.timestamps
    end
  end
end
