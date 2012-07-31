class AddDataSourceIdToDataProviders < ActiveRecord::Migration
  def change
	  add_column :data_providers, :data_source_id, :integer
  end
end
