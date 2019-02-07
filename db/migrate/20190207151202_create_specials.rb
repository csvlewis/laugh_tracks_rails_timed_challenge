class CreateSpecials < ActiveRecord::Migration[5.1]
  def change
    create_table :specials do |t|
    t.string :title
    end
  end
end
