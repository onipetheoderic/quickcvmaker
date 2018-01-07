class AddDateToDetail < ActiveRecord::Migration[5.1]
  def change
  	add_column :details, :expdate1, :string
  	add_column :details, :expdate2, :string
    add_column :details, :expdate3, :string
    add_column :details, :expdate4, :string
    add_column :details, :expdate5, :string
    add_column :details, :expdate6, :string
    add_column :details, :expdate7, :string


    add_column :details, :exphead1, :string
  	add_column :details, :exphead2, :string
    add_column :details, :exphead3, :string
    add_column :details, :exphead4, :string
    add_column :details, :exphead5, :string
    add_column :details, :exphead6, :string
    add_column :details, :exphead7, :string

    add_column :details, :expsubhead1, :string
  	add_column :details, :expsubhead2, :string
    add_column :details, :expsubhead3, :string
    add_column :details, :expsubhead4, :string
    add_column :details, :expsubhead5, :string
    add_column :details, :expsubhead6, :string
    add_column :details, :expsubhead7, :string

    add_column :details, :experience6, :text
    add_column :details, :experience7, :text
   

    add_column :details, :techskill1, :string
    add_column :details, :techskill2, :string
    add_column :details, :techskill3, :string
    add_column :details, :techskill4, :string
    add_column :details, :techskill5, :string
    add_column :details, :techskill6, :string
    add_column :details, :techskill7, :string
    add_column :details, :techskill8, :string
    add_column :details, :techskill9, :string
    add_column :details, :techskill10, :string
    add_column :details, :techskill11, :string
    add_column :details, :techskill12, :string
    add_column :details, :techskill13, :string
    add_column :details, :techskill14, :string
    add_column :details, :techskill15, :string
    add_column :details, :techskill16, :string
    add_column :details, :techskill17, :string
    add_column :details, :techskill18, :string
    add_column :details, :techskill19, :string
    add_column :details, :techskill20, :string
    add_column :details, :techskill21, :string
    add_column :details, :techskill22, :string
    add_column :details, :techskill23, :string
    add_column :details, :techskill24, :string
    add_column :details, :techskill25, :string
    add_column :details, :techskill26, :string

    add_column :details, :skill01, :text
    add_column :details, :skill02, :text
    add_column :details, :skill03, :text
    add_column :details, :skill04, :text
    add_column :details, :skill05, :text
    add_column :details, :skill06, :text
    add_column :details, :skill07, :text
    add_column :details, :skill08, :text
  	

  	add_column :details, :label1, :string
    add_column :details, :label2, :string
    add_column :details, :label3, :string
    add_column :details, :label4, :string
    add_column :details, :label5, :string
    add_column :details, :label6, :string
    add_column :details, :label7, :string
    add_column :details, :label8, :string
  	

  end
end
