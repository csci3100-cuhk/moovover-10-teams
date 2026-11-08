class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    # Some existing databases already have this table from db/schema.rb.
    create_table :movies, if_not_exists: true do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date

      t.timestamps
    end
  end
end
