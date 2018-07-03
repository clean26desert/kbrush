class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit]

	def show
		@user = User.find(params[:id])
		@items = @user.items
		@alone_illusts = @user.alone_illusts
	end

	def edit
		@items = current_user.items
		@alone_illusts = current_user.alone_illusts
	end

	def update
	end

	def thanks
	end

    private
	    def user_params
	    	params.require(:user).permit(:user_img, :user_handle_name, :email, :password, :user_introduct, :credit, :bank, :branch_office, :bank_account, :f_appo_flg, :f_business_flg, :user_appo_flg,  :created_at, :updated_at)
		end
end
