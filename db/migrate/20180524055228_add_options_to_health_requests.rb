class AddOptionsToHealthRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :health_requests, :dental, :boolean
    add_column :health_requests, :global, :boolean
    add_column :health_requests, :life, :boolean
  end
end
