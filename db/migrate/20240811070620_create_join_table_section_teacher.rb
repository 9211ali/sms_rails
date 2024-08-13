class CreateJoinTableSectionTeacher < ActiveRecord::Migration[6.1]
  def change
    create_join_table :sections, :teachers do |t|
      # t.index [:section_id, :teacher_id]
      # t.index [:teacher_id, :section_id]
    end
  end
end
