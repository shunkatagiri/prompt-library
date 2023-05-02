class SorceryCore < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
    # 他に追加するカラムがあれば、ここに記述してください
  end
end
