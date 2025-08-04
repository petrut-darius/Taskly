class Project < ApplicationRecord
  belongs_to :user
  has_many :project_tasks

  validates :name, presence: true
  validates :priority, presence: true
end
