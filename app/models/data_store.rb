class DataStore < ActiveRecord::Base
	belongs_to :data_source

	attr_accessible :data_source_id, :type_name, :location, :access_method, :owner
end
