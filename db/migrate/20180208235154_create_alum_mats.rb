class CreateAlumMats < ActiveRecord::Migration[5.1]
  def change
    create_table :alum_mats do |t|
      t.references :alum, foreign_key: true
      t.references :mat, foreign_key: true

      t.timestamps
    end
  end
end
