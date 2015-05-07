class InstitutionsController < ApplicationController
  before_filter :authenticate_superadmin!, :except => [:show, :edit, :update]

  def index
    @institutions = Institution.all
  end

  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(params[:institution])
    respond_to do |format|
      if @institution.save
        format.html { redirect_to institutions_path, notice: 'Institution was successfully created.' }
        format.json { render json: @institution, status: :created, institution: @institution }
      else
        format.html { render action: "new" }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @institution = Institution.find(params[:id])
  end

  def update
    @institution = Institution.find(params[:id])
    respond_to do |format|
      if @institution.update_attributes(params[:institution])
        format.html { redirect_to institutions_path, notice: 'Institution was successfully updated.' }
        format.json { render json: @institution, status: :created, institution: @institution }
      else
        format.html { render action: "new" }
        format.json { render json: @institution.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @institution = Institution.find(params[:id])
    institution = @institution.name
    @library.destroy

    respond_to do |format|
      format.html { redirect_to institutions_url, notice: "#{institution} was successfully deleted." }
      format.json { head :no_content }
    end
  end

end
