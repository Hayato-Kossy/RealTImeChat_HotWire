class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :image, :string
    add_column :users, :introduction, :text
  end
end
