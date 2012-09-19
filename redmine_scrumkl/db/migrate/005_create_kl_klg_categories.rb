class CreateKlKlgCategories < ActiveRecord::Migration
  def self.up
    create_table :kl_klg_categories do |t|

      t.column :category, :text

    end
  end

  def self.down
    drop_table :kl_klg_categories
  end
end
