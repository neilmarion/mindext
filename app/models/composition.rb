class Composition < ActiveRecord::Base
  attr_accessible :content
  
  has_many :compositions_tags
  has_many :tags, :through => :compositions_tags
  
  before_create :create_hashtags
  
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
    hashtag_array = extract_hashtags
    tags = []
    hashtag_array.each do |hashtag|
      tags << Tag.create(tag: hashtag)
    end
    tags
  end
end
