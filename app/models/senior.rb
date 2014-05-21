class Senior < ActiveRecord::Base
  has_secure_password
  has_many :issues

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :password, length: {within: 6..20, too_short: "is too short", too_long: "is too long"}
  validates :terms, acceptance: true

end
