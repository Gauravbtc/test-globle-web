class AuthenticationsController

  def auth
    ## verifying parameters
    parameter_missing?(%w[username password], params)
    user = User.find_by(username: params[:username])
    render json: { errors: ["wrong username or password"] }, status: :unauthorized  unless user.present?
    if user.check_password(params[:password])
      render json: user
    else
      render json: { errors: ["wrong username or password"] }, status: :unauthorized
    end
  end


  private
    def parameter_missing?(check_parameters = [], parameters = {})
      missing_params = []
      missing_params << check_parameters.select { |p| parameters[p].to_s.strip.blank? }
      if missing_params.flatten!.present?
        raise ArgumentError, "Please check your parameters"
      end
    end
end