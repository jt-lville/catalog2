class DataNote < ActiveRecord::Base
	belongs_to :data_source

	attr_accessible :data_source_id, :text, :date, :user
end
