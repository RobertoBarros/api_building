class Api::V1::BaseController < ActionController::Base
  include Pundit
  acts_as_token_authentication_handler_for User, except: [:index, :show]

  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    render json: { type: 'error', message: "Unauthorized #{policy_name.camelize}.#{exception.query}" },
status: :unauthorized
  end
end