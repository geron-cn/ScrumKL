class RemoveDescriptionToKlBacklog < ActiveRecord::Migration
  def self.up
    remove_column :kl_backlogs, :description

  end

  def self.down
    add_column :kl_backlogs, :description, :text
  end
end
