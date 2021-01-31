class DropEnrollmentsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :enrollments_tables
  end
end
