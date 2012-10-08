class Tag < ActiveRecord::Base
  attr_accessible :tag
  
  has_many :compositions_tags
  has_many :compositions, :through => :compositions_tags
  
  validates_uniqueness_of :tag, on: :create, message: "already taken"
  validates_uniqueness_of :tag, on: :update, message: "already taken"
end
