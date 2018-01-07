class Detail < ApplicationRecord
	belongs_to :user
	is_impressionable
	validates :layout, numericality: { less_than_or_equal_to: 6,  only_integer: true }

	has_attached_file :image, styles: { medium: "109x109#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	
	msg = "There are many variations of passages of Lorem Ipsum available. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
	oneparagraph = "There are many variations of passages of Lorem Ipsum available. If you are going to use a passage of Lorem Ipsum"
	skills_word = "skill 1"
	workplace = 'Galactic zoo'
	workplace_subheader = 'playing football with lions and dancing with dinosaurs'
	date = '2100 -2160'

	after_initialize do
	    if new_record?
	      self.header ||= 'Onipe Theoderic' # be VERY careful with ||= and False values
	      self.subheader ||= 'the best website developer in the world'
	      self.email ||= 'onipetheoderic@gmail.com'
	      self.telephone ||= '07039148866'
	      self.sex ||= 'Male'
	      self.address ||= 'no 12 police road, ilorin'
	      self.githublink ||= 'githublink/theoderic'
	      self.twitter ||= 'twitter/theoderic'
	      self.facebook ||= 'facebook/theoderic'
	      self.objectives ||= msg
	      self.experience ||= msg
	      self.experience2 ||= msg
	      self.experience3 ||= msg
	      self.experience4 ||= msg
	      self.experience5 ||= msg
	      self.experience6 ||= msg
	      self.experience7 ||= msg

	      self.language ||= 'English, French, Mandarian, Greek, Latin, Ebira'
	      self.interest ||= 'meeting new people, making friends'
	      
	      self.education ||= msg
	      self.education2 ||= msg
	      self.education3 ||= msg
	      self.education4 ||= msg
	      self.education5 ||= workplace_subheader
	      self.education6 ||= workplace_subheader
	      self.education7 ||= workplace_subheader

	      self.hobby ||= 'swimming, dancing, running, reading, gaming, cooking'
	      self.referee ||= oneparagraph
	      self.project ||= oneparagraph

	      self.skill01 ||= skills_word
	      self.skill02 ||= skills_word
	      self.skill03 ||= skills_word
	      self.skill04 ||= skills_word
	      self.skill05 ||= skills_word
	      self.skill06 ||= skills_word
	      self.skill07 ||= skills_word
	      self.skill08 ||= skills_word

	      self.label1 ||= 'Profile'
	      self.label2 ||= 'Skills'
	      self.label3 ||= 'Technical'
	      self.label4 ||= 'Experience'
	      self.label5 ||= 'referees'
	      self.label6 ||= 'hobbies'
	      self.label7 ||= 'Education'
	      self.label8 ||= 'Self Appraisal'

	      self.techskill1 ||= 'techskill1'
	      self.techskill2 ||= 'techskill2'
	      self.techskill3 ||= 'techskill3'
	      self.techskill4 ||= 'techskill4'
	      self.techskill5 ||= 'techskill5'
	      self.techskill6 ||= 'techskill6'
	      self.techskill7 ||= 'techskill7'
	      self.techskill8 ||= 'techskill8'
	      self.techskill9 ||= 'techskill9'
	      self.techskill10 ||= 'techskill10'
	      self.techskill11 ||= 'techskill11'
	      self.techskill12 ||= 'techskill12'
	      self.techskill13 ||= 'techskill13'
	      self.techskill14 ||= 'techskill14'
	      self.techskill15 ||= 'techskill15'
	      self.techskill16 ||= 'techskill16'
	      self.techskill17 ||= 'techskill17'
	      self.techskill18 ||= 'techskill18'
	      self.techskill19 ||= 13
	      self.techskill20 ||= 'techskill20'
	      self.techskill21 ||= 12
	      self.techskill22 ||= 12
	      self.techskill23 ||= 14
	      self.techskill24 ||= 13
	      self.techskill25 ||= 13
	      self.techskill26 ||= 12

	      self.expdate1 ||= date
	      self.expdate2 ||= date
	      self.expdate3 ||= date
	      self.expdate4 ||= date
	      self.expdate5 ||= date
	      self.expdate6 ||= date
	      self.expdate7 ||= date

	      self.exphead1 ||= workplace
	      self.exphead2 ||= workplace
	      self.exphead3 ||= workplace
	      self.exphead4 ||= workplace
	      self.exphead5 ||= workplace
	      self.exphead6 ||= workplace
	      self.exphead7 ||= workplace

	      self.expsubhead1 ||= workplace_subheader
	      self.expsubhead2 ||= workplace_subheader
	      self.expsubhead3 ||= workplace_subheader
	      self.expsubhead4 ||= workplace_subheader
	      self.expsubhead5 ||= workplace_subheader
	      self.expsubhead6 ||= workplace_subheader
	      self.expsubhead7 ||= workplace_subheader

	      
	      self.referee2 ||= workplace_subheader
	      self.referee3 ||= workplace_subheader
	      self.referee4 ||= workplace_subheader
	      self.referee5 ||= workplace_subheader

	      self.school ||= "placeholder text"
	      self.school2 ||= "placeholder text"
	      self.school3 ||= "placeholder text"
	      self.school4 ||= workplace_subheader
	      self.school5 ||= workplace_subheader


	    end
  end

end
#class AddAttachmentImageToDetails < ActiveRecord::Migration[5.1] make sure that all your migrations contains the [5.1] 


