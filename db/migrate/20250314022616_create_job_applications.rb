class CreateJobApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :job_applications do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
