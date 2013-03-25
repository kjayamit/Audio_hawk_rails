class Project < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :project_name
  validates_numericality_of :price, :message=>"Error Message"
  has_attached_file :picture,
                    :styles => {
                        :thumb => "75x75#",
                        :small => "100x100#",
                        :medium => "150x150>"
                    }
end
