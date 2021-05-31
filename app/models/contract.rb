class Contract < ApplicationRecord
   belongs_to :salesman

  
 

    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
    validates :milestone_1_date, presence: true

    before_save :stamp_date_for_milestones

    def salesman_commission
        return self.job_amount / self.salesman.sales_commission        
    end
        
    def salesman_commission_formatted
        return ActionController::Base.helpers.number_to_currency(self.job_amount / self.salesman.sales_commission)
    end




   

    def stamp_date_for_milestones
       
        if self.milestone_2_complete && !self.milestone_2_date.present?
            self.milestone_2_date = DateTime.now
        end
        if self.milestone_3_complete && !self.milestone_3_date.present?
            self.milestone_3_date = DateTime.now
        end
        if self.milestone_4_complete && !self.milestone_4_date.present?
            self.milestone_4_date = DateTime.now
    end
end
    
   
end
