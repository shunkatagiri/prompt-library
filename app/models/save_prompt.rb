class SavePrompt < ApplicationRecord
  belongs_to :user
  belongs_to :prompt_template
end
