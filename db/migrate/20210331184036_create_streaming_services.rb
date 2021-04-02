class CreateStreamingServices < ActiveRecord::Migration[6.1]
  def change
    create_table :streaming_services do |t|
      t.string :title
      t.string :tv_selection_rating
      t.string :movie_selection_rating
    end
  end
end
