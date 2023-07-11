class RemoveInitialValuesFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :comment, :string
  end
end
