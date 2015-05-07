class InstitutionsController < ApplicationController
  before_filter :authenticate_superadmin!, :except => [:show, :edit, :update]

  def index
    @institutions = Institution.all
  end

  def new
    @institution = Institution.new
  end

end
