class CompositionsTag < ActiveRecord::Base
  belongs_to :composition
  belongs_to :tag
  # attr_accessible :title, :body
end
