class CreateDataSources < ActiveRecord::Migration
  def change
    create_table :data_sources do |t|

      t.text :description
      t.string :coverage
      t.string :status
      t.string :frequency
      t.datetime :history_start
      t.datetime :history_end
      t.datetime :sample_start
      t.datetime :sample_end
      t.decimal :cost_amount
      t.string :cost_frequency

      t.timestamps
    end
  end
end
