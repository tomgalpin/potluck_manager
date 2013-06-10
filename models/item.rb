class Item < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :users
  has_many :potlucks
end