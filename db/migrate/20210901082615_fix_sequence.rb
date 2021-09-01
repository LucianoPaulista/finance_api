class FixSequence < ActiveRecord::Migration[6.1]
  def change
    rename_column :installments, :sequence, :code
  end
end
