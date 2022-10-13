require 'rails_helper'

# ①対象のクラス及びRSpecの種類を定義
RSpec.describe Product, type: :model do
  # ②対象のメソッドなどを記載
  describe "#price_less_than_1000?" do
    # ③テストの条件を記載
    context "価格が1000円未満の場合" do
      # ⑤テストデータを作成しproduct変数に入れる
      let!(:product) {create(:product, price: 999)}
      # ④期待する実行結果を記載
      it "returnはtrueであること" do
        # ⑥テストの実行結果を検証
        expect(product.price_less_than_1000?).to be_truthy
      end
    end
  end

  describe ".ids_price_less_than_1000" do
    let!(:product) {create(:product, price: 999)}
    before {create_list(:product, 2, price: 1000)}
    it "価格が1000円未満の商品のIDのみ取得できること" do
      expect(Product.ids_price_less_than_1000).to match_array [product.id]
    end
  end
end
