class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.integer :user_id
      t.integer :anime_id
      t.string :comment

      t.timestamps
    end
  end
end
