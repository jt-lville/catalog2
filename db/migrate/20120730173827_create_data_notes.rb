class CreateDataNotes < ActiveRecord::Migration
  def change
    create_table :data_notes do |t|
      t.text :text
      t.string :date
      t.string :user

      t.timestamps
    end
  end
end
