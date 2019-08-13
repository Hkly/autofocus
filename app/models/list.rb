class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_one :focus
  has_one :focused_item, through: :focus, source: :item

  validates :user, presence: true

  def focus_on(item)
    unless focused_item == item
      self.focused_item = item
      item.update_attribute(:last_focused_date, DateTime.now)
    end
  end

  def unfocus
    focus.destroy
  end
end
