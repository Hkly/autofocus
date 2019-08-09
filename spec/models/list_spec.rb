require "rails_helper"

RSpec.describe List do
  let(:list) { create :list, :with_items}

  describe '#focus_on' do
    it 'gives focus to an item' do
      expect{ list.focus_on(list.items.first) }.to(
        change(list, :focused_item).from(nil).to(list.items.first)
      )
    end
  end

  describe '#unfocus' do
    it 'clears the focused item' do
      list.focused_item = list.items.first
      list.unfocus
      list.reload_focused_item

      expect(list.focused_item).to be nil
    end
  end
end
