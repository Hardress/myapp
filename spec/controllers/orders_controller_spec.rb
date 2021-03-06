require 'rails_helper'

describe OrdersController, type: :controller do

  before(:each) do
      @user = FactoryBot.create(:user)
  end

  context 'user is logged in' do
      before do
        sign_in @user
      end

      it "is a valid order" do
        post :create, params: { product_id: product.id, order: { user: @user, product: product, total: 1 } }
        expect(response).to have_http_status(204)
      end
    end
   end
