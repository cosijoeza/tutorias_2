class CreateHistorials < ActiveRecord::Migration[5.1]
  def change
    create_table :historials do |t|
      t.references :alum, foreign_key: true
      t.references :mat, foreign_key: true
      t.float :calif_1
      t.float :calif_2
      t.float :calif_3
      t.float :final
      t.float :ext_1
      t.float :ext_2
      t.float :esp

      t.timestamps
    end
  end
end
