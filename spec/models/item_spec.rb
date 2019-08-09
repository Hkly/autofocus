require "rails_helper"

RSpec.describe Item do
  let(:item) { create :item }

  describe '#unfocus' do
    it 'unfocuses the item' do
      Focus.create(item_id: item.id, list_id: item.list.id)

      expect{ item.unfocus }.to change(Focus, :count).by(-1)
    end
  end
end
