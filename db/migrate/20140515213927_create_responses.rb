class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :content
      t.integer :issue_id
      t.integer :helper_id
      t.timestamps
    end
  end
end
