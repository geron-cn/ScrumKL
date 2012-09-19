class CreateKlBacklogs < ActiveRecord::Migration
  def self.up
    create_table :kl_backlogs do |t|

      t.column :issue_id, :integer, :null => false

      t.column :category_id, :integer

      t.column :sprint_id, :integer

      t.column :priority, :integer

      t.column :estimate, :float

    end
  end

  def self.down
    drop_table :kl_backlogs
  end
end
