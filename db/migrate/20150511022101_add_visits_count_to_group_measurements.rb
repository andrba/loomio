class AddVisitsCountToGroupMeasurements < ActiveRecord::Migration
  def change
    add_column :group_measurements, :visits_count, :integer
    add_column :group_measurements, :member_visits_count, :integer

    add_column :group_measurements, :organisation_visits_count, :integer
    add_column :group_measurements, :member_organisation_visits_count, :integer
  end
end
