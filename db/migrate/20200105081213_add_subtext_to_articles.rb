class AddSubtextToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :subtext, :string
  end
end
