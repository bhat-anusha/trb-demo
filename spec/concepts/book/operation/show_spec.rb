require 'rails_helper'

RSpec.describe Book::Operation::Show do

  let(:book) { FactoryBot.create(:book) }

  it "successfully retrives a book" do
    result = described_class.(params: { id: book.id })

    expect(result.success?).to eq(true)
    expect(result[:model]).to be_a(Book)
    expect(result[:model].id).to eq(book.id)
    expect(result[:model].persisted?).to eq(true)
  end
end
