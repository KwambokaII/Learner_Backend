class LiveSession < ApplicationRecord
    belongs_to :course
  
    validates :start_time, presence: true
    validates :link, presence: true
  end