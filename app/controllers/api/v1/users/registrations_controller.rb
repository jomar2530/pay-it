module Api
  module V1
    module Users
      class RegistrationsController < Devise::RegistrationsController
        skip_forgery_protection
        respond_to :json

        private

        def respond_with(resource, _opts = {})
          if resource.persisted?
            @token = request.env["warden-jwt_auth.token"]
            headers["Authorization"] = @token if @token

            render_success_response(resource)
          else
            render_failure_response(resource)
          end
        end

        def render_success_response(resource)
          render json: {
            status: {
              code: 200,
              message: I18n.t("successful.registration.created"),
              token: @token,
              data: UserSerializer.new(resource).serializable_hash
            }
          }
        end

        def render_failure_response(resource)
          render json: {
            status: {
              message: "#{I18n.t('failure.registration.not_created')}. #{resource.errors.full_messages.first}"
            }
          }, status: :unprocessable_entity
        end

        protected

        def sign_up_params
          params.require(:user).permit(:email, :password, :password_confirmation)
        end
      end
    end
  end
end
