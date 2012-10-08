class Tag < ActiveRecord::Base
  attr_accessible :tag
  
  has_many :compositions_tags
  has_many :compositions, :through => :compositions_tags
end
