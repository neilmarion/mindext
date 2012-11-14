class Asset < ActiveRecord::Base
  attr_accessible :asset
  belongs_to :composition
  has_attached_file :asset, :styles => { :medium => "300x300>" }
end
