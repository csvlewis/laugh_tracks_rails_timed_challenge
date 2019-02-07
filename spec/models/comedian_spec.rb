require 'rails_helper'

describe Comedian, type: :model do
  describe 'relationships' do
    it {should have_many(:specials)}
  end

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
  end

  describe 'class methods' do
    describe 'average_age' do
      it 'calculates the average age of all comedians' do
        comedian_1 = Comedian.create(name: 'John Mulaney', age: 30)
        comedian_2 = Comedian.create(name: 'Bill Burr', age: 50)

        expect(Comedian.average_age).to eq(40)
      end
    end
  end
end
