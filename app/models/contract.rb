class Contract < ApplicationRecord
    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
end
