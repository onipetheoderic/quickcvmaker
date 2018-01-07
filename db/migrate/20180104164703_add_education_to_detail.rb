class AddEducationToDetail < ActiveRecord::Migration[5.1]
  def change
    add_column :details, :education2, :text
    add_column :details, :education3, :text
    add_column :details, :education4, :text
    add_column :details, :education5, :text
    add_column :details, :education6, :text
    add_column :details, :education7, :text


    add_column :details, :referee2, :text
    add_column :details, :referee3, :text
    add_column :details, :referee4, :text
    add_column :details, :referee5, :text
  end
end
