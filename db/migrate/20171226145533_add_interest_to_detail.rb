class AddInterestToDetail < ActiveRecord::Migration[5.1]
  def change
    add_column :details, :interest, :text
    add_column :details, :language, :text
    add_column :details, :experience2, :text
    add_column :details, :experience3, :text
    add_column :details, :experience4, :text
    add_column :details, :experience5, :text
  end
end
