class AddPublishToDetail < ActiveRecord::Migration[5.1]
  def change
    add_column :details, :publish, :boolean
  end
end
