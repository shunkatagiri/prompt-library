class CreatePromptTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :prompt_templates do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
