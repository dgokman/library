class RemoveReaderIdFromCheckouts < ActiveRecord::Migration
  def change
    remove_column :checkouts, :reader_id, :integer
  end
end
