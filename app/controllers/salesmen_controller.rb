class SalesmenController < ApplicationController
    def index
        @salesmen = Salesman.all
    end

    def show
        @salesman = Salesman.find(params[:id])
      end
    
      def new
        @salesman = Salesman.new
      end

      def edit
        @salesman = Salesman.find(params[:id])
      end

      def create
        @salesman = Salesman.new(salesman_params)
    
        if @salesman.save
          redirect_to @salesman
        else
          render :new
        end
      end

      def update
        @salesman = Salesman.find(params[:id])
    
        if @salesman.update(salesman_params)
          redirect_to @salesman
        else
          render :edit
        end
      end

      def destroy
        @salesman = Salesman.find(params[:id])
        @salesman.destroy
        flash[:danger] = "Salesman has been deleted"
        redirect_to salesmen_path
      end

      private
      def salesman_params
          params.require(:salesman).permit(:full_name, :sales_commission)
      end
end
