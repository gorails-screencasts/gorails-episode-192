class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.references :director, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
