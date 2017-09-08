class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :name
      t.string :website
      t.string :podcast

      t.timestamps null: false
    end
  end
end
