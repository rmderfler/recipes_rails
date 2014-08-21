class Recipe < ActiveRecord::Base
  validates :title, :presence => true
  has_many :tags
  has_many :ratings
end
