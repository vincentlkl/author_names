class InvitationsController < Devise::InvitationsController

  def create
    all_users        = []
    institution      = params[:institution]
    institution_role = params[:institution_role]

    if params[:user_emails].present?
      params[:user_emails].split(",").each do |email|
        email = email.delete(' ')
        all_users << email
        user = User.invite!(:email => email)
        if institution.present?
          user.add_institution_role(institution,institution_role)
        end
      end
      redirect_to new_user_invitation_path, notice: "#{all_users.join(',')} has been invited."
    else
      redirect_to new_user_invitation_path, notice: "Email cannot be blank."
    end
  end

  def update
    super
    if resource.save
      if params[:institution].present?
        institution = Institution.where("name = ?", params[:institution]['name']).first
        unless institution.present?
          institution = Institution.new
          institution.name         = params[:institution]['name']
          institution.save
        end
        resource.add_institution_role(institution.id,"admin")
      end
    end
  end

  private

  def invite_resource
    user = resource_class.invite!(invite_params, current_inviter)
    user
  end

  # this is called when accepting invitation
  # should return an instance of resource class
  def accept_resource
    user = resource_class.accept_invitation!(update_resource_params)
    user
  end

  def after_invite_path_for(resource)
    root_path
  end

end
