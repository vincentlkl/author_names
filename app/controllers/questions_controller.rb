class QuestionsController < ApplicationController
before_filter :authenticate_user!
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.institution_id = current_user.institution.id.to_i
		if (@question.save)
			flash[:notice] = "Question has been created."
			redirect_to questions_path
		else
			flash[:alert] = "Question has not been created."
			render new
		end
  end

  def update
    @question = Question.find(params[:id])
		if (@question.update_attributes(question_params))
			flash[:notice] = "Question has been updated."
			redirect_to questions_path
		else
			flash[:alert] = "Question has not been updated."
			render edit
		end
  end

  def destroy

  end

private
	def question_params
    columns = Question.strong_parameters
		params.require(:question)
		.permit(columns)
	end
end
