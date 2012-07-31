class CreateDataProviders < ActiveRecord::Migration
  def change
    create_table :data_providers do |t|
      t.string :url
      t.string :email
      t.string :contact
      t.string :phone

      t.timestamps
    end
  end
end
