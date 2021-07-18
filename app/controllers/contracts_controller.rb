class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
    
  end

  def milestones
    @contracts = Contract.all
    
  end

  def docs    
    milestone1contracts = Contract.doc_by_month_year_and_field(params[:month_num], params[:year_num], :milestone_1_date)
    milestone2contracts = Contract.doc_by_month_year_and_field(params[:month_num], params[:year_num], :milestone_2_date)
    milestone3contracts = Contract.doc_by_month_year_and_field(params[:month_num], params[:year_num], :milestone_3_date)
    milestone4contracts = Contract.doc_by_month_year_and_field(params[:month_num], params[:year_num], :milestone_4_date)
    
    @data = []
    @sum = 0
    milestone1contracts.each do |contract|      
      match = {}
      match[:job_number] = contract.job_number
      match[:job_name] = contract.job_name
      match[:amount] = contract.milestone_1_amount
      
      @sum += contract.milestone_1_amount

      @data << match
    end
    milestone2contracts.each do |contract|      
      match = {}
      match[:job_number] = contract.job_number
      match[:job_name] = contract.job_name
      match[:amount] = contract.milestone_2_amount
      @sum += contract.milestone_2_amount
      @data << match
    end
    milestone3contracts.each do |contract|      
      match = {}
      match[:job_number] = contract.job_number
      match[:job_name] = contract.job_name
      match[:amount] = contract.milestone_3_amount
      @sum += contract.milestone_3_amount
      @data << match
    end
    milestone4contracts.each do |contract|            
      match = {}
      match[:job_number] = contract.job_number
      match[:job_name] = contract.job_name
      match[:amount] = contract.milestone_4_amount
      @sum += contract.milestone_4_amount
      @data << match
    end    
  end
  
  # def docs
  #  @contracts = Contract.doc_jun
  # end

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
