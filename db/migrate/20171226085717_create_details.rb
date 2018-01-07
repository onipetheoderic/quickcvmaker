class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :header
      t.string :subheader
      t.string :email
      t.string :website
      t.string :telephone
      t.string :sex
      t.string :address
      t.string :githublink
      t.string :age
      t.string :twitter
      t.string :facebook
      t.text :objectives
      t.text :experience
      t.text :keyskill
      t.text :education
      t.text :hobby
      t.text :referee
      t.text :project
      t.text :otherskill
      t.integer :layout

      t.timestamps
    end
  end
end
