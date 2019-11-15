class AddImageUrLtoCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :image_URL, :string
  end
end
