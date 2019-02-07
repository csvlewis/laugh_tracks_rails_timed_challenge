class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @average_age = Comedian.average_age
  end
end
