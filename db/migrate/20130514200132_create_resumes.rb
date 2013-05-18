class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.text :resumetext
      t.string :jobtitle
      t.integer :user_id

      t.timestamps
    end
  end
end
