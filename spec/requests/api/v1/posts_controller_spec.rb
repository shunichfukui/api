require 'rails_helper'

RSpec.describe 'Api::V1::PostsController', type: :request do
  describe 'GET /posts' do
    before do
      create_list(:post, 3)
    end
    let!(:path) { api_v1_posts_path }

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
