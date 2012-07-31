class AddDataSourceIdToDataTypes < ActiveRecord::Migration
  def change
	   add_column :data_types, :data_source_id, :integer
  end
end
