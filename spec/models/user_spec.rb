require "rails_helper"

RSpec.describe User do
  describe '#list' do
    let(:user) { create :user }

    it 'creates one when no list' do
      expect(List.where(user_id: user.id)).to have(0).records
      expect{ user.list }.to change{ List.count }.by(1)
      expect(List.where(user_id: user.id)).to have(1).records
    end

    it 'returns existing list' do
      list = List.create(user_id: user.id)
      expect(user.list).to eq list
    end
  end
end
