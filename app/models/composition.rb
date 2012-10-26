class Composition < ActiveRecord::Base
  attr_accessible :content
  
  has_many :compositions_tags
  has_many :tags, :through => :compositions_tags
  
  define_index do
    # fields
    indexes :content
    
    # attributes
    #has author_id, created_at, updated_at
  end
end
