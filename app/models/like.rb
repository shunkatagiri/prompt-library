class Like < ApplicationRecord
  validates :user_id, presence: true
  validates :prompt_template_id, presence: true
end
