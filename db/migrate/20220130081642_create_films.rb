class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :title
      t.text :text
      t.integer :rating
      t.integer :users_voted
      t.string :img

      t.timestamps
    end
  end
end