class AddCategoryTypeToProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :category_type, :string
  end
end
