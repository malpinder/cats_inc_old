require 'spec_helper'

describe Item do
  describe "#reduce_stock_by!" do
    subject { described_class.new(stock: 15) }
    before do
      subject.stub(:save!)
    end
    it "reduces the stock number by the amount" do
      subject.reduce_stock_by!(3)
      expect(subject.stock).to eq 12
    end
    it "saves the record" do
      subject.should_receive(:save!)
      subject.reduce_stock!
    end
  end
end
