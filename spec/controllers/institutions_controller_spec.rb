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

  context "when logged in as user" do
    before(:each) do
      @institution = FactoryGirl.create(:institution)
      @user = FactoryGirl.create(:user)
      # sign_in @user
    end

    describe "GET show" do
      it "assigns the requested institution as @institution" do
        institution = Institution.create!
        get :show, {:id => institution.to_param}
        expect(assigns(:institution)).to eq(institution)
      end
    end

  end

end
