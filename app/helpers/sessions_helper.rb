module SessionsHelper
	def handle_unverified_request
    sign_out
    super
  end
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end
   def current_user=(user)
    @current_user = user
  end
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
   def signed_in?
    !current_user.nil?
  end
end
