class CreateFrees < ActiveRecord::Migration
  def change
    create_table :frees do |t|
      t.text "title"
      t.text "content"
      t.timestamps null: false
    end
  end
end
