class Issue < ActiveRecord::Base
  belongs_to :senior
  has_many :responses
end
