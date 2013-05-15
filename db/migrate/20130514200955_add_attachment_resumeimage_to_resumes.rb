class AddAttachmentResumeimageToResumes < ActiveRecord::Migration
  def self.up
    change_table :resumes do |t|
      t.attachment :resumeimage
    end
  end

  def self.down
    drop_attached_file :resumes, :resumeimage
  end
end
