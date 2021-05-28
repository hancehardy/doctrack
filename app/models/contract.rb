class Contract < ApplicationRecord
   belongs_to :salesman

  
 

    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
    validates :milestone_1_date, presence: true


    def salesman_commission
        return self.job_amount / self.salesman.sales_commission        
    end
        
    def salesman_commission_formatted
        return ActionController::Base.helpers.number_to_currency(self.job_amount / self.salesman.sales_commission)
    end
    
    
   
end
