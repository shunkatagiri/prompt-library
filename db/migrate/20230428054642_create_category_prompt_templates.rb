class CreateCategoryPromptTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :category_prompt_templates do |t|
      t.integer :category_id
      t.integer :prompt_template_id 

      t.timestamps
    end
  end
end
