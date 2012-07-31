class CreateDataDocs < ActiveRecord::Migration
  def change
    create_table :data_docs do |t|
      t.string :url
      t.integer :level

      t.timestamps
    end
  end
end
