require 'rails_helper'

RSpec.describe 'Api::V1::PortfoliosController', type: :request do
  describe 'GET /portfolios' do
    before do
      create :user
    end
    let!(:portfolios) { create_list :portfolio, 3 }

    let!(:path) { api_v1_portfolios_path }

    subject do
      get path
    end

    context '正常系' do
      it '200レスポンスが返ること' do
        subject
        expect(response).to have_http_status :ok
      end
      it '投稿データが取得できること' do
        subject
        res = JSON.parse(response.body)
        expect(res.length).to eq(3)
      end
    end
  end
end
