class PromptTemplate < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_many :likes
  has_many :comments

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true
  validates :category_id, presence: true
end
