class RemoveFullNameFromReaders < ActiveRecord::Migration
  def change
    remove_column :readers, :name, :string
  end
end
