class Category < ActiveRecord::Base
  has_many :photos
  has_many :categories
  
  scope :active, where('active = ?', true)
  scope :alphabetical, order('name')
end
