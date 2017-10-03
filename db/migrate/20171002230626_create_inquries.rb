class CreateInquries < ActiveRecord::Migration
  def change
    create_table :inquries do |t|
      t.string :name
      t.string :brand
      t.string :type
      t.string :email
      t.string :budget
      t.text :seeking

      t.timestamps null: false
    end
  end
end
