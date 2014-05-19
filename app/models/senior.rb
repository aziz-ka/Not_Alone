class Senior < ActiveRecord::Base
  has_secure_password
  has_many :issues
end
