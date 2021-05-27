class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
   
  end

  def show
    @contract = Contract.find(params[:id])
    
  end

  def new
    @contract = Contract.new
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

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy

    redirect_to root_path
  end



  private
    def contract_params
        params.require(:contract).permit(:job_number, :job_name, :job_amount, :milestone_1_date, :referral_name, :referral_amount, :salesman_id)
    end
    

end
