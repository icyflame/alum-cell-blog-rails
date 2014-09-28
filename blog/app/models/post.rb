class Post < ActiveRecord::Base
  belongs_to :contributor
  validates :title, presence: true, length: { minimum: 5 }
  validates :content, presence: true, length: { minimum: 20 }
end
