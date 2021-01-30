class AddEventDescriptionColumnToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :event_description, :text
  end
end
