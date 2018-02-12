class CreatePrus < ActiveRecord::Migration[5.1]
  def change
    create_table :prus do |t|
      t.string :foto

      t.timestamps
    end
  end
end
