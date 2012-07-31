class AddDataIdToDataDocs < ActiveRecord::Migration
  def change
	  add_column :data_docs, :data_source_id, :integer
  end
end
