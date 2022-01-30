class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :text
      t.integer :rating, default: 0
      t.integer :users_voted, default: 0

      t.timestamps
    end
  end
end
