class InvitationsController < Devise::InvitationsController

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
