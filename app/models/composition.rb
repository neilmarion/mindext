class Composition < ActiveRecord::Base
  attr_accessible :content, :assets_attributes
  
  has_many :compositions_tags
  has_many :tags, :through => :compositions_tags
  has_many :assets
  
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
  after_create :create_hashtags
  
  define_index do
    # fields
    indexes :content
    
    # attributes
    #has author_id, created_at, updated_at
  end
  
  private
  
  def extract_hashtags
    content.split.find_all{|word| /^#.+/.match word}
  end
  
  def create_hashtags
    extract_hashtags.each do |hashtag|
      tag = Tag.find_or_create_by_tag(hashtag)
      CompositionsTag.create(tag: tag, composition: self)
    end
  end
end
