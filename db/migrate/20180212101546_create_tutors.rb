class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|
      t.references :prof, foreign_key: true
      t.references :alum, foreign_key: true

      t.timestamps
    end
  end
end
