class AnswersController < ApplicationController
before_filter :authenticate_user!
  def index
    if params[:questionnaire_id].present?
      @questionnaire = Questionnaire.includes(:answers).find(params[:questionnaire_id])
      @answers = @questionnaire.answers
    end
  end

  def show
    if params[:questionnaire_id].present?
      @questionnaire = Questionnaire.includes(:answers,:questions).find(params[:questionnaire_id])
      @answer = Answer.find(params[:id])
      @questions = @questionnaire.questions
    end
  end

  def new
    if params[:questionnaire_id].present?
      @questionnaire = Questionnaire.includes(:answers,:questions).find(params[:questionnaire_id])
      @answer = Answer.new
      @questions = @questionnaire.questions
    end
  end

  def edit
    if params[:questionnaire_id].present?
      @questionnaire = Questionnaire.includes(:answers,:questions).find(params[:questionnaire_id])
      @answer = Answer.find(params[:id])
      @questions = @questionnaire.questions
    end
  end

  def create
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @answer = Answer.new(answer_params)
		if @answer.save
			flash[:notice] = "Answer has been created."
			redirect_to questionnaire_answers_path(@questionnaire)
		else
			flash[:alert] = "Answer has not been created."
			render new
		end
  end

  def update
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @answer = Answer.find(params[:id])
		if (@answer.update_attributes(answer_params))
			flash[:notice] = "Answer has been created."
			redirect_to questionnaire_answers_path(@questionnaire)
		else
			flash[:alert] = "Answer has not been created."
			render new
		end
  end

private
	def answer_params
    columns = Answer.strong_parameters
		params.require(:answer)
		.permit(columns).tap do |whitelisted|
      whitelisted[:questions] = params[:answer][:questions]
    end
	end
end
