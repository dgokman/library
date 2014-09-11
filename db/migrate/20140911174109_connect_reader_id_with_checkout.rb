class ConnectReaderIdWithCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :reader_id, :integer

    Reader.all.each do |reader|
      Checkout.all.each do |checkout|
        if reader.name == checkout.name
         checkout.reader_id = reader.id
         checkout.save
        end
      end
    end
  end
end
