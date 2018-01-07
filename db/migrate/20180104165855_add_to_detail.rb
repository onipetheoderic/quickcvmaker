class AddToDetail < ActiveRecord::Migration[5.1]
  def change
  	add_column :details, :school, :text
  	add_column :details, :school2, :text
    add_column :details, :school3, :text
    add_column :details, :school4, :text
    add_column :details, :school5, :text
    add_column :details, :school6, :text
    add_column :details, :school7, :text

  end
end
