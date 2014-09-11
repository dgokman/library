class RemoveReaderNameFromCheckouts < ActiveRecord::Migration
  def change
    remove_column :checkouts, :name, :string
  end
end
