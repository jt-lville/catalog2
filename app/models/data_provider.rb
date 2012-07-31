class DataProvider < ActiveRecord::Base
	belongs_to :data_source

	attr_accessible :data_source_id, :url, :email, :contact, :phone
end
