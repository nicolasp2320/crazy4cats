class Post < ApplicationRecord
  acts_as_votable
  
  has_many :comments
  has_many :likes
  has_many :dislikes
end
