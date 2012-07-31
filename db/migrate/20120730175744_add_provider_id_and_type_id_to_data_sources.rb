class AddProviderIdAndTypeIdToDataSources < ActiveRecord::Migration
  def change
	  add_column :data_sources, :data_provider_id, :integer
	  add_column :data_sources, :data_type_id, :integer
  end
end
