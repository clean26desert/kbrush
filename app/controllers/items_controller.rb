class ItemsController < ApplicationController

	def top
		@user = current_user
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		@item.user_id = current_user.id
		@item.save
		redirect_to root_path
	end

	def show
		@item = Item.find(params[:id])
		@alone_illusts = current_user.alone_illusts
		@order = Order.new
	end

	def edit
	end

	def update
	end

	def index
		@items = Item.all
	end

	def search
	end

	def search_result
	end

    private
	    def item_params
	    	params.require(:item).permit(:user_id, :item_img, :item_name, :item_introduct, :item_attention, :item_limited_size_b4, :item_limited_size_a4, :item_limited_style_real, :item_limited_style_abstract, :item_limited_coating_line, :item_limited_coating_cg, :item_limited_motif_person, :item_limited_motif_nature_outside, :item_limited_advice_composition, :item_limited_advice_drawing, :item_appo_flg, :created_at, :updated_at)
		end
end
