class DataDoc < ActiveRecord::Base
	belongs_to :data_source

	attr_accessible :data_source_id, :url, :level
end
