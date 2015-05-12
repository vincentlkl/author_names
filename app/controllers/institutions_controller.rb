class InstitutionsController < ApplicationController
before_filter :authenticate_user!

  def index
    if !current_user.role == "superadmin"
      @institutions = Institution.all
    else
      @institution = current_user.institution
      render "institution"
    end

  end

  def show
    @institution = Institution.find(params[:id])
  end

  def new
    @institution = Institution.new
  end

  def edit
    @institution = Institution.find(params[:id])
  end

  def create
    @institution = Institution.new(institution_params)
		if (@institution.save)
			flash[:notice] = "Institution has been created."
			redirect_to institutions_path
		else
			flash[:alert] = "Institution has not been created."
			render new
		end
  end

  def update
    @institution = Institution.find(params[:id])
		if (@institution.update_attributes(institution_params))
			flash[:notice] = "Institution has been updated."
			redirect_to institutions_path
		else
			flash[:alert] = "Institution has not been updated."
			render new
		end
  end

private
	def institution_params
    columns = Institution.strong_parameters
		params.require(:institution)
		.permit(columns)
	end
end
