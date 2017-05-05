class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year_released
      t.string :mpaa_rating
      t.integer :user_rating
      t.integer :length
      t.boolean :ownership_status
      t.string :ownership_type
      t.date :last_viewing
      t.integer :times_watched
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
