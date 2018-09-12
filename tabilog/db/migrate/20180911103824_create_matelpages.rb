class CreateMatelpages < ActiveRecord::Migration
  def change
    create_table :matelpages do |t|
        t.string      :name
        t.text        :country
        t.text        :city
        t.text        :image
        t.text        :text
        t.timestamps
    end
  end
end
