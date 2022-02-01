class AddSlugToFilms < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :slug, :string
    add_index :films, :slug, unique: true
  end
end
