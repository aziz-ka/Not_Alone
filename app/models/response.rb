class Response < ActiveRecord::Base
  belongs_to :issue
  belongs_to :helper
end
