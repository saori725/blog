class CreateMatelpages < ActiveRecord::Migration
  def change
    create_table :matelpages do |t|
     
        t.string      :name
        t.string      :country
        t.string      :city
        t.string      :image
        t.text        :text
        t.timestamps
    end
  end
end
