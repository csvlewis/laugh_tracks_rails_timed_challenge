require 'rails_helper'

describe Special, type: :model do
  describe 'relationships' do
    it {should belong_to(:comedian)}
  end

  describe 'validations' do
    it {should validate_presence_of(:title)}
  end
end
