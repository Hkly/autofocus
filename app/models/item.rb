class Item < ApplicationRecord
  belongs_to :list
  has_one :focus

  validates :name, presence: true
  validates :list, presence: true

  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
  scope :ordered_by_date_completed, -> { order(date_completed: :desc) }
  scope :unfocused, -> { left_outer_joins(:focus).where("focuses.id": nil) }

  after_update :unfocus, if: :focused_completed

  def focused_completed
    completed? && focused?
  end

  def focused?
    focus.present?
  end

  def unfocus
    focus.destroy
  end
end
