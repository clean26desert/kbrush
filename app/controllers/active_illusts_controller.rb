class ActiveIllustsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :edit, :update]

	def create
	    order = Order.find(params[:order_id])
		active_illust = ActiveIllust.new(active_illust_params)
		active_illust.order_id = order.id
		if active_illust.save
			order.update(status: 2)
			redirect_to edit_user_path(current_user)
		else
			@order = order
			@active_illust = ActiveIllust.new
			flash.now[:alert] = "全ての項目を入力してください"
			render "orders/edit"
		end
	end

	def show
		@active_illust = ActiveIllust.find(params[:id])
	end

	def edit
		@active_illust = ActiveIllust.find(params[:id])
	end

	def update
	    active_illust = ActiveIllust.find(params[:id])
		active_illust.update(active_illust_params)

	    order = Order.find(params[:order_id])

		order.update(status: 3)
		redirect_to edit_user_path(current_user)
	end

    private
	    def active_illust_params
	    	params.require(:active_illust).permit(:order_id, :a_illust_img, :a_illust_name, :advice, :a_value_clear, :a_value_match, :a_value_again, :a_value_comment, :p_value_clear, :p_value_match, :p_value_again, :p_value_comment, :created_at, :updated_at)
		end
end
