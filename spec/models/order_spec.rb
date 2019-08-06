require 'rails_helper'

RSpec.describe Order, type: :model do
  let!(:order) { FactoryBot.create(:order) }

  describe 'validations' do
    it 'factory valid' do
      expect(order).to be_valid
    end

    it 'email are presents' do
      should validate_presence_of(:email)
    end
  end
end
