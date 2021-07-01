class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
    
  end

  def milestones
    @contracts = Contract.all
    
  end

  def docs
    @contracts = Contract.all
  end
  
  # def docs
   # @contracts = Contract.by_month(6, year: 2021, field: :milestone_2_date)
  #end

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

 

  def edit_milestone
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])

    if @contract.update(contract_params)
      redirect_to milestones_path
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
        params.require(:contract).permit(:job_number, :job_name, :job_amount, :milestone_1_date, :milestone_2_date, :milestone_3_date, :milestone_4_date, :referral_name, :referral_amount, :salesman_id, :milestone_2_complete, :milestone_3_complete, :milestone_4_complete)
    end
    

end
