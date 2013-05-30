class Image < ActiveRecord::Base
  belongs_to :project
  has_attached_file :pic,
                    :styles => {
                        :thumb => "75x75#",
                        :small => "100x100#",
                        :medium => "150x150>"
                    }
  validates_attachment_size :pic, :less_than => 5.megabytes
end

# TODO :
#Paperclip 3.0 introduces a non-backward compatible change in your attachment
#path. This will help to prevent attachment name clashes when you have
#multiple attachments with the same name. If you didn't alter your
#attachment's path and are using Paperclip's default, you'll have to add
#`:path` and `:url` to your `has_attached_file` definition. For example:
#
#    has_attached_file :avatar,
#                      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
#\     :url => "/system/:attachment/:id/:style/:filename"

