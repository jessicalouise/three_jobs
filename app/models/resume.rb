class Resume < ActiveRecord::Base
  attr_accessible :jobtitle, :resumetext, :resumeimage
  belongs_to :user
  has_attached_file :resumeimage
end
