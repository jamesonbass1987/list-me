module SessionsHelper

  def session_links
    if !current_page?('/users/sign_in') && !current_page?('/users/sign_up')
      if user_signed_in?
        link_to('Logout', destroy_user_session_path, method: :delete)
      else
        link_to('Login', new_user_session_path) + " or " + link_to('Sign Up', new_user_registration_path)
      end
    end
  end

end
