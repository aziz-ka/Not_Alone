class Issue < ActiveRecord::Base
  belogs_to :senior
  has_many :responses
end
