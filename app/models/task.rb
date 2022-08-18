class Task < ApplicationRecord
  belongs_to :user 
  belongs_to :project 
  validates :title, presence: true 
  validates :due_date, presence: true 
  validates :status, presence: true 
end
