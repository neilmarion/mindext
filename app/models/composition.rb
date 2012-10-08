class Composition < ActiveRecord::Base
  attr_accessible :content
  
  has_many :compositions_tags
  has_many :tags, :through => :compositions_tags
end
