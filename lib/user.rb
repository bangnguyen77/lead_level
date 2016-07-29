class User < ActiveRecord::Base
  has_many(:results)
  has_and_belongs_to_many(:places)
  has_many(:contacts)
end
