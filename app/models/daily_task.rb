class DailyTask < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :get_till_done, presence: true, comparison: { greater_than: Date.today }
end
