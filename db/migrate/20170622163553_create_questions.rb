class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text "quest"
      t.timestamps null: false
    end
  end
end
