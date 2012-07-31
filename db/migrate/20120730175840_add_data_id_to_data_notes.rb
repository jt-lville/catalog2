class AddDataIdToDataNotes < ActiveRecord::Migration
  def change
	   add_column :data_notes, :data_source_id, :integer
  end
end
