class Chapter < ActiveRecord::Base
  has_many :sections
  has_many :lessons
end
