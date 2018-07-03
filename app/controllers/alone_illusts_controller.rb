class AloneIllustsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def new
		@alone_illust = AloneIllust.new
	end

	def create
		@alone_illust = AloneIllust.new(alone_illust_params)
		@alone_illust.user_id = current_user.id
		if @alone_illust.save
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@alone_illust = AloneIllust.find(params[:id])
	end

	def edit
	end

	def update
	end

    private
	    def alone_illust_params
	    	params.require(:alone_illust).permit(:user_id, :size_id, :al_illust_img, :al_illust_name, :al_illust_introduct, :al_illust_attention, :al_illust_limited_style_real, :al_illust_limited_style_abstract, :al_illust_limited_coating_line, :al_illust_limited_coating_cg, :al_illust_limited_motif_person, :al_illust_limited_motif_nature_outside, :al_illust_limited_advice_composition, :al_illust_limited_advice_drawing, :al_illust_appo_flg, :created_at, :updated_at)
		end
end
