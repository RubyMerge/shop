require 'rails_helper'

RSpec.describe MyShopsController, type: :controller do

  describe '#index' do
    it 'assigns @data' do
      shop = FactoryBot.create(:my_shop)
      get :index
      expect(assigns(:data)).to eq(shop)
    end

    it 'invalid @data' do
      FactoryBot.create(:my_shop, page_name: 'contacts')
      get :index
      expect(assigns(:data)).to be_nil
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe '#contacts' do
    it 'assigns @data' do
      shop = FactoryBot.create(:my_shop, page_name: 'contacts')
      get :contacts
      expect(assigns(:data)).to eq(shop)
    end

    it 'invalid @data' do
      FactoryBot.create(:my_shop)
      get :contacts
      expect(assigns(:data)).to be_nil
    end

    it 'renders the index template' do
      get :contacts
      expect(response).to render_template('contacts')
    end
  end

  describe '#payment_delivery' do
    it 'assigns @data' do
      shop = FactoryBot.create(:my_shop, page_name: 'payment_delivery')
      get :payment_delivery
      expect(assigns(:data)).to eq(shop)
    end

    it 'invalid @data' do
      FactoryBot.create(:my_shop, page_name: 'contacts')
      get :payment_delivery
      expect(assigns(:data)).to be_nil
    end

    it 'renders the index template' do
      get :payment_delivery
      expect(response).to render_template('payment_delivery')
    end
  end

  describe '#order_goods' do
    it 'assigns @data' do
      shop = FactoryBot.create(:my_shop, page_name: 'order_goods')
      get :order_goods
      expect(assigns(:data)).to eq(shop)
    end

    it 'invalid @data' do
      FactoryBot.create(:my_shop, page_name: 'contacts')
      get :order_goods
      expect(assigns(:data)).to be_nil
    end

    it 'renders the index template' do
      get :order_goods
      expect(response).to render_template('order_goods')
    end
  end
end
