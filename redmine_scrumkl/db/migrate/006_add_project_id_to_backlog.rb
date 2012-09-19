class AddProjectIdToBacklog < ActiveRecord::Migration
  def self.up
    add_column :kl_backlogs, :project_id, :integer

  end

  def self.down
    remove_column :kl_backlogs, :project_id

  end
end
