class ResumesController < ApplicationController
	
def index
		@resumes = Resume.all 
		 respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resumes }
    end
    
	end

	def edit
		@resume = Resume.find(params[:id])
	end


	def new
		@resume = Resume.new

		respond_to do |format|
			format.html
			format.json {render json: @resumes}
		end
	end
	

	
	def show
    @resume = Resume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resume }
  		end
	end

	 def create
    @resume = Resume.new(params[:resume])

    respond_to do |format|
      if @resume.save
        format.html { redirect_to @resume, notice: 'Movie was successfully created.' }
        format.json { render json: @resume, status: :created, location: @resume }
      else
        format.html { render action: "new" }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end
end
