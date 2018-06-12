class OrdersController < ApplicationController
	def create
	    item = Item.find(params[:item_id])
		order = Order.new(order_params)
		order.item_id = item.id
		order.save
		redirect_to thanks_path
	end

	def show
		#status0~3で場合分け
		@order = Order.find(params[:id])
		if @order.status == 1
			@active_illust = ActiveIllust.new
		end
	end

	def edit
		#status0~3で場合分け
	end

	def update
	    order = Order.find(params[:id])
	    if order.status == 0
			order.status = 1
		elsif order.status == 1
			order.status = 2
		elsif order.status == 2
			order.status = 3
		end
		order.save
		redirect_to edit_user_path(current_user)
	end

	def destroy
	    order = Order.find(params[:id])
		order.destroy
		redirect_to edit_user_path(current_user)
	end

    private
	    def order_params
	    	params.require(:order).permit(:item_id, :alone_illust_id, :status, :created_at, :updated_at)
		end
end
