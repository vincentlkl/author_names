class InvitationsController < Devise::InvitationsController
  private

  def invite_resource
    user = resource_class.invite!(invite_params, current_inviter)

    if user.errors.empty?

    end
    user
  end

  # this is called when accepting invitation
  # should return an instance of resource class
  def accept_resource
    user = resource_class.accept_invitation!(update_resource_params)
    # company = user.company
    # if company.status != "Active"
    #   company.update_attributes(:status => "Active")
    # end
    #
    user
  end

  def after_invite_path_for(resource)
    if session[:product_url].present?
     product_path(session[:product_url])
    else
     root_path
    end
  end

end
