class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:user).permit(
			:email,
			:admin,

			:password,
			:password_confirmation

			:first_name,
			:last_name,
			:phone
		)
	end



	def account_update_params
		params.require(:user).permit(
			:email,
			:admin,

			:password,
			:password_confirmation,
			:current_password,

			:first_name,
			:last_name,
			:phone
		)
	end
end