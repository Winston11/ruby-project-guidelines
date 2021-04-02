class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :owner_id
      t.integer :streaming_id
      t.integer :overall_score
      t.string :comment
    end
  end
end
