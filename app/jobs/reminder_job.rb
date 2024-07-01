class ReminderJob < ApplicationJob
    queue_as :default
  
    def perform(course)
      # Logic to send reminder
    end
  end