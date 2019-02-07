require 'rails_helper'

describe 'comedian index page' do
  describe 'when a visitor visits /comedians' do
    it 'they see a list of comedians, each with a name and age' do
      comedian_1 = Comedian.create(name: 'John Mulaney', age: 36)
      comedian_2 = Comedian.create(name: 'Bill Burr', age: 50)
      visit comedians_path

      expect(page).to have_content(comedian_1.name)
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_2.name)
      expect(page).to have_content(comedian_2.age)
    end

    it 'they see a list of each comedian\'s TV specials' do
      comedian_1 = Comedian.create(name: 'John Mulaney', age: 36)
      comedian_1.specials.create(title: 'New in Town')
      comedian_1.specials.create(title: 'The Top Part')

      visit comedians_path

      expect(page). to have_content(comedian_1.specials.first.title)
      expect(page). to have_content(comedian_1.specials.second.title)

    end
  end
end
