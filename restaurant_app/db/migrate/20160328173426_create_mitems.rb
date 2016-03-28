class CreateMitems < ActiveRecord::Migration
  def change
    create_table :mitems do |t|
      t.string :name
      t.float :price
      t.string :img_url
      t.string :desc
    end
  end
end
