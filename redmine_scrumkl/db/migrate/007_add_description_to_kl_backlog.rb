class AddDescriptionToKlBacklog < ActiveRecord::Migration
  def self.up
    add_column :kl_backlogs, :description, :text

  end

  def self.down
    remove_column :kl_backlogs, :description

  end
end
