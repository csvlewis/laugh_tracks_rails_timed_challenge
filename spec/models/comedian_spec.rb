require 'rails_helper'

describe Comedian, type: :model do
  describe 'relationships' do
    it {should have_many(:specials)}
  end

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
  end
end
