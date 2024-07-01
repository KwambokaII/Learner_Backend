class Course < ApplicationRecord
    # belongs_to :teacher, class_name: 'User'
    has_many :live_sessions, dependent: :destroy
    has_many :videos, dependent: :destroy
  
    validates :title, presence: true
  end