# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Page, type: :model do
  subject do
    described_class.new(page_id: '22')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a page id' do
    subject.page_id = nil
    expect(subject).not_to be_valid
  end
end