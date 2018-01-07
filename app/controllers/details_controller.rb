class DetailsController < ApplicationController
	impressionist actions: [:show], unique: [:session_hash]
	# before_action :require_permission, only: [:edit, :destroy, :update]
	before_action :find_detail, only: [:show, :update, :edit, :destroy, :layout3, :layout1, :showprint] #only on the SUED
	protect_from_forgery with: :exception #this was to also facilitate the custom fields created
	before_action :authenticate_user!

	
	def index
		# @details = Detail.all.order('created_at DESC')
		
		@details = current_user.details.order('created_at DESC')


	end

	def new
		@detail = current_user.details.build
		# @recipe = current_user.recipes.build
	end

	def create
		@detail = current_user.details.build(details_params)
		if @detail.save
			redirect_to @detail, notice: "CV Successfully created proceed with Editing"
		else
			render 'new'
		end
	end

	def show

		if @detail.layout == 1
    		render action: "layout1" and return

    	
    	elsif @detail.layout == 3
    		render action: "layout3" and return 
    	end
  			respond_to do |format|
		    format.html
		    format.pdf do
	   			render  :pdf => "file.pdf", :template => 'details/show.pdf.erb',
	   			encoding: "UTF-8", 
	   			layout: 'application'  
	      end
	    end
	  # render pdf: "file_name_of_your_choice",
   #             template: "invoices/show.pdf.erb",
   #             locals: {:invoice => @invoice}
	end


	def showprint

		if @detail.layout == 1
    		render action: "printlayout1" and return
    	
    	elsif @detail.layout == 3
    		render action: "printlayout3" and return 

    	elsif @detail.layout == 0
    		render action: "printshow" and return

    	end
    end

	def layout3 #custom method created so as to be able to print the pdf version to the screen
		respond_to do |format|
		    format.html
		    format.pdf do
	   			render  :pdf => "file.pdf", :template => 'details/layout3.pdf.erb',
	   			encoding: "UTF-8", 
	   			layout: 'application'  
	   		end
	   	end
	end

	def layout1 #custom method created so as to be able to generate the pdf version to the screen
		respond_to do |format| #the wicked gem only works this way
		    format.html
		    format.pdf do
	   			render  :pdf => "file.pdf", :template => 'details/layout1.pdf.erb',
	   			encoding: "UTF-8", 
	   			layout: 'application'  
	   		end
	   	end
	end


	def edit
	end

	def update
		if @detail.update(details_params)
			redirect_to @detail
		else
			render "edit" #renders the edit form
		end
	end

	def destroy
		@detail.destroy
		redirect_to root_path notice: "Successfully deleted"
	end


	private

	def require_permission
	  if current_user != Detail.find(params[:id]).user
	    redirect_to root_path, notice: "You cannot Edit or Delete resume created by You"
	    #Or do something else here
	  end
	end

	def details_params
		params.require(:detail).permit(:header, :subheader, :email, :telephone, :sex, :address, :githublink, :age, :twitter, :facebook,
			:objectives, :experience, :experience2, :experience3, :experience4, :interest, :language, :experience5, :keyskill, :education, 
			:image, :hobby, :referee, :project, :otherskill, :layout, :publish, :expdate1, :expdate2, :expdate3, :expdate4, :expdate5, 
			:expdate6, :expdate7, :exphead1, :exphead2, :exphead3, :exphead4, :exphead5, :exphead6, :exphead7, :expsubhead1, :expsubhead2,
			:expsubhead3, :expsubhead4, :expsubhead5, :expsubhead6, :expsubhead7, :experience6, :experience7, :techskill1, :techskill2, 
			:techskill3, :techskill4, :techskill5, :techskill6, :techskill7, :techskill8, :techskill9, :techskill10, :techskill11, :techskill12,
			:techskill13, :techskill14, :techskill15, :techskill16, :techskill17, :techskill18,	:techskill19, :techskill20, :techskill21, 
			:techskill22, :techskill23, :techskill24, :techskill25, :techskill26, :skill01, :skill02, :skill03, :skill04, :skill05, :skill06, :skill07, :skill08,
			:label1, :label2, :label3, :label4, :label5, :label6, :label7, :label8, :education2, :education3, :education4, :education5, :education6, :education7,
			:referee2, :referee3, :referee4, :referee5, :school, :school2, :school3, :school4, :school5, :school6, :school7)
	end 

	def find_detail
		@detail = Detail.find(params[:id])
	end


   

end


