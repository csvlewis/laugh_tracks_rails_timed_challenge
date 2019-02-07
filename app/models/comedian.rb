class Comedian < ApplicationRecord
  has_many :specials
  validates_presence_of :name, :age

  def self.average_age
    average(:age)
  end
end
