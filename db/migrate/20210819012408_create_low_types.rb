class CreateLowTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :low_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
