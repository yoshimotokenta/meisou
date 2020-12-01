class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name,       null:false
      t.string :when,       null:false
      t.string :where,      null:false
      t.string :who,        null:false
      t.string :why,        null:false
      t.string :how,        null:false
      t.timestamps
    end
  end
end
