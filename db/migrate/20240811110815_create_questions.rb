class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :name
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
