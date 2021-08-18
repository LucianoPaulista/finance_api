class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :zip_code
      t.string :address_number
      t.string :complement
      t.string :state
      t.string :city
      t.string :neighborhood
      t.belongs_to :participant
      t.timestamps
    end
  end
end
