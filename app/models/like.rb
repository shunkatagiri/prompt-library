class Like < ApplicationRecord
  belongs_to :user
  belongs_to :prompt_template

  validates :user_id, presence: true
  validates :prompt_template_id, presence: true
end
