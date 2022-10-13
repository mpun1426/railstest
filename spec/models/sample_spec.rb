require 'rails_helper'

RSpec.describe Sample, type: :model do
  # 成功するケースを記述
  it "合計値が算出されていること（１つめ）" do
    expect(Sample.addition(1, 1)).to eq 2  
  end

  # 失敗するケースを記述
  it "合計値が算出されていること（２つめ）" do
    expect(Sample.addition(1, 1)).to eq 2
  end
end
