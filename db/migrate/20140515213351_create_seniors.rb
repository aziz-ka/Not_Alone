class CreateSeniors < ActiveRecord::Migration
  def change
    create_table :seniors do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.integer :age
      t.timestamps
    end
  end
end
