class Contract < ApplicationRecord
   belongs_to :salesman
  

  
 

    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
    validates :milestone_1_date, presence: true

    before_save :undo_stamp_date_for_milestones
    before_save :stamp_date_for_milestones
    

    def salesman_commission
        return self.job_amount / self.salesman.sales_commission        
    end
        
    def salesman_commission_formatted
        return ActionController::Base.helpers.number_to_currency(self.job_amount / self.salesman.sales_commission)
    end

    def undo_stamp_date_for_milestones
        if self.milestone_2_complete == false
            self.milestone_2_date = nil
        end
        if self.milestone_3_complete == false
            self.milestone_3_date = nil
        end
        if self.milestone_4_complete == false
            self.milestone_4_date = nil
        end
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

    def milestone_1_amount
        return self.job_amount * 0.15
    end
    def milestone_2_amount
        return self.job_amount * 0.35
    end
    def milestone_3_amount
        return self.job_amount * 0.40
    end
    def milestone_4_amount
        return self.job_amount * 0.10
    end






    #def doc_month(mo, yr)
    #    self.contracts.by_month(mo, year: yr, field: milestone_1_complete)
    #end
  
end


