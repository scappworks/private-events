class CreateEnrollmentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments_tables do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
