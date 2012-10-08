module CompositionsHelper
  def replace_hashtags_with_hyperlinks(string, tags)
    new = ""
    r = /^#.+/
    string.split.each do |s|
      s = s.match(r) ? "<a href=#{tag_path(Tag.find_by_tag(s).id)}>#{s}</a>" : s
      new = new + s + " "
    end
    new
  end
  
  private
  
  def extract_hashtags(string)
    string.split.find_all{|word| /^#.+/.match word}
  end
end
