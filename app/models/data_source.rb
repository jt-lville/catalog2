class DataSource < ActiveRecord::Base
	has_many :data_docs

	has_many :data_providers
	has_many :data_types

	has_many :data_stores
	has_many :data_notes

	attr_accessible :description, :coverage, :status, :frequency, :history_start, :history_end, :sample_start, :sample_end, :cost_amount, :cost_frequency
end
