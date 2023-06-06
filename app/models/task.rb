class Task < ActiveRecord::Base
  belongs_to :category


  validates :title, presence: true
  validates :description, presence: true
end

def mark_as_completed
  update(completed: true)
end

def self.pending_tasks
  where(completed: false)
end
end
