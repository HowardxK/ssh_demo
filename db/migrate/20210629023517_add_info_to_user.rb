class AddInfoToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string # 不是放圖片 是放大頭照路徑
  end
end
