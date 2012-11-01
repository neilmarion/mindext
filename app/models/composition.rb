class Composition < ActiveRecord::Base
  attr_accessible :content
  
  has_many :compositions_tags
  has_many :tags, :through => :compositions_tags
  
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
