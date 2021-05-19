class ReferralsController < ApplicationController
    def index
        @referrals = Referral.all
    end

    def show
        @referalls = Referral.find(params[:id])
      end
    
      def new
        @referalls = Referral.new
      end
      

      private
      def referral_params
          params.require(:referral).permit(:first_name, :last_name, :referral_commission)
      end
end
