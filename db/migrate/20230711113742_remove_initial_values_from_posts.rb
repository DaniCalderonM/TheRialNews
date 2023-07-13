class RemoveInitialValuesFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :trnposts, :comment, :string
  end
end
