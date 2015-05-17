require 'rails_helper'

RSpec.describe InvitationsController, type: :controller do
let(:valid_session) { {"warden.user.user.key" => session["warden.user.user.key"]} }

  context "when logged in as admin user" do
    before(:each) do
      @current_user = FactoryGirl.create(:user, email: "admin@test.com")
      @request.env["devise.mapping"] = Devise.mappings[:user]
      sign_in @current_user
    end

    it "invite one user with no institution" do
      invite_user = {"user_emails"=>"newuser@test.com", "institution"=>"", "institution_role"=>""}
      expect {
        post :create, invite_user, valid_session
      }.to change(User, :count).by(1)
    end

    it "invite two users with no institution" do
      invite_user = {"user_emails"=>"newuser1@test.com,newuser2@test.com", "institution"=>"", "institution_role"=>""}
      expect {
        post :create, invite_user, valid_session
      }.to change(User, :count).by(2)
    end

    it "invite one user with institution" do
      institution = FactoryGirl.create(:institution, name: "New Institution1")
      invite_user = {"user_emails"=>"newuser@test.com", "institution"=>institution.id, "institution_role"=>"admin"}
      post :create, invite_user, valid_session
      expect(institution.users.count).to eq(1)
    end

    it "invite two users with institution" do
      institution = FactoryGirl.create(:institution, name: "New Institution2")
      invite_user = {"user_emails"=>"newuser@test.com, newuser2@test.com", "institution"=>institution.id, "institution_role"=>"admin"}
      post :create, invite_user, valid_session
      expect(institution.users.count).to eq(2)
    end

  end
end
