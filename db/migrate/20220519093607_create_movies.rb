class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :title
      t.string :overview
      t.string :post_url
      t.string :rating
      t.string :integer

      t.timestamps
    end
  end
end
