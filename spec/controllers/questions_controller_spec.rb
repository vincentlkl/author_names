require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let(:valid_attributes) {
    {
      :name => "New question"
    }
  }

  let(:invalid_attributes) {
    {
      :name => nil
    }
  }

  let(:valid_session) { {"warden.user.user.key" => session["warden.user.user.key"]} }
  context "when logged in as user" do
    before(:each) do
      @question = FactoryGirl.create(:question)
      @user = FactoryGirl.create(:user)
      @institution = FactoryGirl.create(:institution)
      @user.add_institution_role(@institution.id,"admin")
      sign_in @user
    end

    describe "GET index" do
      it "assigns all questions as @questions" do
        get :index, valid_session
        expect(assigns(:question)).to eq(@questions)
      end
    end

    describe "GET show" do
      it "assigns the requested question as @question" do
        question = @question
        get :show, {:id => question.to_param}
        expect(assigns(:question)).to eq(question)
      end
    end

    describe "GET new" do
      it "assigns a new question as @question" do
        question = Question.new
        get :new, {}
        expect(assigns(:question)).to be_a_new(Question)
      end
    end

    describe "POST create" do
      it "creates a new question" do
        post :create, {:question => valid_attributes}, valid_session
        expect(assigns(:question)).to be_a(Question)
      end
    end

    describe "GET edit" do
      it "assigns the requested question as @question" do
        question = @question
        get :edit, {:id => question.to_param}, valid_session
        expect(assigns(:question)).to eq(question)
      end
    end

    describe "PUT update" do
      describe "with valid params" do
        it "assigns the requested question as @question" do
          question = @question
          put :update, {:id => question.to_param, :question => valid_attributes}, valid_session
          expect(assigns(:question)).to eq(question)
        end
      end
    end

  end
end
