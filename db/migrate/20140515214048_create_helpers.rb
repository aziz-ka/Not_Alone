class CreateHelpers < ActiveRecord::Migration
  def change
    create_table :helpers do |t|
      t.string :name
      t.string :availability
      t.string :phone_number
      t.timestamps
    end
  end
end
