class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |table|
      table.string :name, null: false
    end
  end
end
