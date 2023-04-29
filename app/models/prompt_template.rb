class PromptTemplate < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true
end
