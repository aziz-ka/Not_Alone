class Helper < ActiveRecord::Base
  has_secure_password
  has_many :responses
end
