class CreateDataStores < ActiveRecord::Migration
  def change
    create_table :data_stores do |t|
      t.string :type
      t.string :location
      t.string :access_method
      t.string :owner
      t.integer :data_source_id

      t.timestamps
    end
  end
end

