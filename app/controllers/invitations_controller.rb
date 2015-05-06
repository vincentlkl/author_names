class InvitationsController < Devise::InvitationsController
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
