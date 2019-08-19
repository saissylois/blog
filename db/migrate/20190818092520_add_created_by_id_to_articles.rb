class AddCreatedByIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :createdById, :int
  end
end
