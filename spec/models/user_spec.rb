require "rails_helper"

RSpec.describe User do
  describe '#list' do
    let(:user) { create :user }

    it 'creates one when no list' do
      expect{ user.list }.to(
        change{ List.where(user_id: user.id).count }.by(1)
      )
    end

    it 'returns existing list' do
      list = List.create(user_id: user.id)
      expect(user.list).to eq list
    end
  end
end
