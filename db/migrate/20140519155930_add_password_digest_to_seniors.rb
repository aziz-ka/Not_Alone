class AddPasswordDigestToSeniors < ActiveRecord::Migration
  def change
    add_column :seniors, :password_digest, :string
  end
end
