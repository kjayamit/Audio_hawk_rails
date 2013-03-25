class Categories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :name, :string
    end
    Category.create :name => "Amplifiers"
    Category.create :name => "Speakers"
  end

  def self.down
    drop_table :categories
  end
end
