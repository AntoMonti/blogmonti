class AddImageToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :image, :binary
  end
end
