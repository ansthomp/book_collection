#location: spec/unit/unit_spec.rb

require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attribtes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with valid author' do
    book = Book.new(title: 'Anna Karenina', author: "Leo Tolstoy")
    expect(book).to be_valid
  end

  it 'is valid with valid price' do
    book = Book.new(title: 'Anna Karenina', price: 12.00)
    expect(book).to be_valid
  end

  it 'is valid with valid publication date' do
    book = Book.new(title: 'Anna Karenina', publishedDate: '01/01/2001')
    expect(book).to be_valid
  end
end
