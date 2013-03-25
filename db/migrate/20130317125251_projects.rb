class Projects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.column :project_name, :string, :limit => 50, :null => false
      t.column :price, :float
      t.column :category_id, :integer
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :projects
  end
end
