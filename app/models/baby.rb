class Baby < ActiveRecord::Base
    has_many :milestones
    has_many :appointments
    has_many :immunizations
    belongs_to :user
end