require 'rails_helper'

RSpec.describe InstitutionsController, type: :controller do

  let(:valid_attributes) {
    {
      :name => "Company Name"
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
      @institution = FactoryGirl.create(:institution)
      @user = FactoryGirl.create(:user)
      sign_in @user
    end

    describe "GET index" do
      it "assigns all institutions as @institutions" do
        get :index, valid_session
        expect(assigns(:institution)).to eq(@institutions)
      end
    end

    describe "GET show" do
      it "assigns the requested institution as @institution" do
        institution = @institution
        get :show, {:id => institution.to_param}
        expect(assigns(:institution)).to eq(institution)
      end
    end

    describe "GET new" do
      it "assigns a new institution as @institution" do
        institution = Institution.new
        get :new, {}
        expect(assigns(:institution)).to be_a_new(Institution)
      end
    end

  end

end
