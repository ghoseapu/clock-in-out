class CreateTeacherClocks < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_clocks do |t|
      t.string :teacher_name
      t.boolean :teacher_clocked_in
      t.datetime :teacher_logged_time

      t.timestamps
    end
  end
end
