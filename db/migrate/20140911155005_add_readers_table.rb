class AddReadersTable < ActiveRecord::Migration
  def change
    create_table :readers do |table|
      table.string :name, null: false
      table.string :email
      table.string :phone_number
    end
  end
end
