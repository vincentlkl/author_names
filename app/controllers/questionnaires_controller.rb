class QuestionnairesController < ApplicationController
before_filter :authenticate_user!
  def index
    @questionnaires = Questionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
		if @questionnaire.save
			flash[:notice] = "Questionnaire has been created."
			redirect_to questionnaires_path
		else
			flash[:alert] = "Questionnaire has not been created."
			render new
		end
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])
		if (@questionnaire.update_attributes(questionnaire_params))
			flash[:notice] = "Questionnaire has been updated."
			redirect_to questionnaires_path
		else
			flash[:alert] = "Questionnaire has not been updated."
			render edit
		end
  end

  def sort

    params[:questionnaire_link].each_with_index do |id, index|
      QuestionnaireLink.find(id).update({position: index+1})
    end
    render nothing: true
  end

  def destroy

  end

private
	def questionnaire_params
    columns = Questionnaire.strong_parameters
		params.require(:questionnaire)
		.permit(columns)
	end
end
