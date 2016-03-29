class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :table
      t.integer :party_size
      t.references :user
      t.references :receipt
    end
  end
end
