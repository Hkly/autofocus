class Item < ApplicationRecord
  belongs_to :list

  validates :name, presence: true
  validates :list, presence: true

  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
  scope :ordered_by_date_completed, -> { order(date_completed: :desc) }
end
