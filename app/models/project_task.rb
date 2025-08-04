class ProjectTask < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :name, presence: true, format: { with: /\A[a-zA-Z0-9\s[:punct:]]+\z/, message: "Only allows letters" }
end
