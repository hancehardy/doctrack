class SalesmenController < ApplicationController
    def index
        @salesmen = Salesman.all
    end

    def show
        @salesmen = Salesman.find(params[:id])
      end
    
      def new
        @salesmen = Salesman.new
      end

      private
      def salesman_params
          params.require(:salesman).permit(:first_name, :last_name, :sales_commission)
      end
end
