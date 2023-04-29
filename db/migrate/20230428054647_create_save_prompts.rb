  class CreateSavePrompts < ActiveRecord::Migration[6.1]
  def change
    create_table :save_prompts do |t|
      t.integer :user_id
      t.integer :prompt_template_id

      t.timestamps
    end
  end
end
