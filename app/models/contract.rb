class Contract < ApplicationRecord
   belongs_to :salesman
   #belongs_to :referral
  

  
 

    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
    validates :milestone_1_date, presence: true

    before_save :undo_stamp_date_for_milestones
    before_save :stamp_date_for_milestones

    scope :doc_by_month_year_and_field, -> (month_num, year_num, field_name) { by_month(month_num, year: year_num, field: field_name)}
    

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
    
    def get_doc_sums(month, year)      
        data = []          
        # iterate through each milestone field
        debugger
        m1_amounts = self.doc_by_month_year_and_field(month, year, :milestone_1_date)
        # if m1_dates > 0

        #     data << m1_dates
        # end
        # m2_dates = self.doc_by_month_year_and_field(month, year, :milestone_2_date)
        # m3_dates = self.doc_by_month_year_and_field(month, year, :milestone_3_date)
        # m4_dates = self.doc_by_month_year_and_field(month, year, :milestone_4_date)
            # does the milestone_date fall inside the month?
        return data
    end






    #def doc_month(mo, yr, milestone_complete)
    #    self.contracts.by_month(mo, year: yr, field: milestone_complete)
    #end
  
end


