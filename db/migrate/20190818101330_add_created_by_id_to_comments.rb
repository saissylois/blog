class AddCreatedByIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :createdById, :int
  end
end
