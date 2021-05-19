class Contract < ApplicationRecord
    belongs_to :salesmen
    belongs_to :referrals

    validates :job_number, presence: true
    validates :job_name, presence: true
    validates :job_amount, presence: true
end
