class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.text :resumetext
      t.string :jobtitle

      t.timestamps
    end
  end
end
