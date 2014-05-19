class AddPasswordDigestToHelpers < ActiveRecord::Migration
  def change
    add_column :helpers, :password_digest, :string
  end
end
