class Category < ApplicationRecord
  has_many :prompt_templates
  
  validates :name, presence: true, length: { maximum: 50 }
end
