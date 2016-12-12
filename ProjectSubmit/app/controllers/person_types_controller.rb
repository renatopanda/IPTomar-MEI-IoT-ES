class PersonTypesController < ApplicationController
	def index
    	@persontypes = PersonType.all
	end

	def show
    	@persontype = PersonType.find(params[:id])
	end

	def edit
    	@persontype = PersonType.find(params[:id])
	end

	def new
   		@persontype = PersonType.new
	end

	def update
    	@persontype = PersonType.find(params[:id])
 
  		if @persontype.update(persontype_params)
    		redirect_to persontypes_path
  		else
    		render 'edit'
  		end
	end

	def create
    	@persontype = PersonType.new(persontype_params)

 		if @persontype.save
  			redirect_to persontypes_path
  		else
      	render 'new'
		end
	end

	def destroy
    	@persontype = PersonType.find(params[:id])
    	@persontype.destroy

    	redirect_to persontypes_path
	end

	private
	def persontype_params
    	params.require(:person_type).permit(:designation)
	end
end