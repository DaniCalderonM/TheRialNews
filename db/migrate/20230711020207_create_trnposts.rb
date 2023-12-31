class CreateTrnposts < ActiveRecord::Migration[7.0]
  def change
    create_table :trnposts do |t|
      t.string :image
      t.string :title
      t.string :description
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
