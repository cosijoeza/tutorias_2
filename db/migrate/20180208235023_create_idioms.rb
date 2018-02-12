class CreateIdioms < ActiveRecord::Migration[5.1]
  def change
    create_table :idioms do |t|
      t.string :nivel
      t.string :semestre
      t.string :estado

      t.timestamps
    end
  end
end
