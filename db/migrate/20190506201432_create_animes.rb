class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :episode
      t.integer :season
      t.string :summary
      t.string :img_url

      t.timestamps
    end
  end
end
