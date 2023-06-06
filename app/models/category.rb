class Category < ActiveRecord::Base
  has_many :tasks

  validates :name, presence: true

  def task_count
    tasks.count
end

