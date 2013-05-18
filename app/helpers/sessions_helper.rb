module SessionsHelper
	def handle_unverified_request
    sign_out
    super
  end
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end
end
