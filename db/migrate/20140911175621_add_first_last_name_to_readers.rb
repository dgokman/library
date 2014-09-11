class AddFirstLastNameToReaders < ActiveRecord::Migration
  def change
   add_column :readers, :first_name, :string
   add_column :readers, :last_name, :string

   Reader.all.find_each do |reader|
     name = reader.name.split(' ')
     reader.first_name = name[0]
     reader.last_name = name[1]
     reader.save
   end
  end
end
