class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text "review"
      t.integer "free_id"
      t.timestamps null: false
    end
  end
end
