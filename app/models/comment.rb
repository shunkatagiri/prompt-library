class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true
  validates :prompt_template_id, presence: true
end
