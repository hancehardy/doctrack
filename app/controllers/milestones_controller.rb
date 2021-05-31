class MilestonesController < ApplicationController
    def index
      @contracts = Contract.all
     
    end

    def create
        @contract = Contract.new(contract_params)
    
        if @contract.save
          redirect_to root_path
        else
          render :new
        end
      end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])

    if @contract.update(contract_params)
      redirect_to @contract
    else
      render :edit
    end
  end

  private
    def contract_params
        params.require(:contract).permit(:job_number, :job_name, :job_amount, :milestone_1_date, :referral_name, :referral_amount, :salesman_id, :milestone_2_complete, :milestone_3_complete, :milestone_4_complete)
    end
end