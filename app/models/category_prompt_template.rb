class CategoryPromptTemplate < ApplicationRecord
  belongs_to :category
  belongs_to :prompt_template

end
