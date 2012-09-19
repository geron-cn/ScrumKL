class CreateKlDiagrams < ActiveRecord::Migration
  def self.up
    create_table :kl_diagrams do |t|

      t.column :sprint_id, :integer

      t.column :story_point, :float

      t.column :story_point_left, :float

      t.column :update_on, :date

    end
  end

  def self.down
    drop_table :kl_diagrams
  end
end
