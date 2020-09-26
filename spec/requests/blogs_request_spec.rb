require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  describe 'ブログ投稿ページ' do
    context "ブログ投稿ページが正しく表示される" do
      before do
        get new_blog_path
      end
      it 'リクエストは302 OKとなること' do
        expect(response.status).to eq 302
      end
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("投稿")
      end
    end
  end
end