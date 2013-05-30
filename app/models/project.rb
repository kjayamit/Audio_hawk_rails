class Project < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :project_name
  validates_numericality_of :price, :message=>"Error Message"
  has_many :images
  accepts_nested_attributes_for :images, :allow_destroy => true
end
