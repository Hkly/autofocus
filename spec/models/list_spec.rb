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
      list.focus_on(list.items.first)
      expect(list.focused_item).to_not be nil
      list.unfocus
      list.reload
      
      expect(list.focused_item).to be nil
    end
  end
end
