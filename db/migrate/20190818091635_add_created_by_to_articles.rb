class AddCreatedByToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :createdBy, :string
  end
end
