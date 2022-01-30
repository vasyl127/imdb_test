class AddImgToFilms < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :img, :string
  end
end
