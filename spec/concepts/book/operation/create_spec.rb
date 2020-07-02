require 'rails_helper'

RSpec.describe Book::Operation::Create do
  it "model contains new instance of Book" do
    result = described_class.()

    expect(result.success?).to eq(true)
    expect(result[:model]).to be_a(Book)
    expect(result[:model].persisted?).to eq(false)
  end
end
