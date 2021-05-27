class Contract < ApplicationRecord
   belongs_to :salesman

  
 

    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
    validates :milestone_1_date, presence: true
        
    
    
   
end
