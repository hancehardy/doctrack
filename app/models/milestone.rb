class Milestone < ApplicationRecord
 
 

    validates :milestone_1_date, presence: true

    before_save :stamp_date_for_milestones
  

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
    
   

