class InformationsController < ApplicationController

	#def create
		#statusで場合分け
	#end

	#def destroy
	#end

    private
	    def informations_params
	    	params.require(:information).permit(:order_id, :information, :checked_flg, :created_at, :updated_at)
		end
end
