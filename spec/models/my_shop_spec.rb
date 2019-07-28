require 'rails_helper'

RSpec.describe MyShop, type: :model do

  let!(:shop) { FactoryBot.create(:my_shop) }

  describe 'validations' do
    it 'factory valid' do
      expect(shop).to be_valid
    end

    it 'page_name are presents' do
      should validate_presence_of(:page_name)
    end

    it 'page_name are unique' do
      should validate_uniqueness_of(:page_name)
    end

    it 'page_name inclusion' do
      should validate_inclusion_of(:page_name).in_array(['main', 'contacts', 'order_goods', 'payment_delivery'])
    end
  end

end
