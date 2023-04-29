class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prompt_template

  validates :content, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true
  validates :prompt_template_id, presence: true
end
