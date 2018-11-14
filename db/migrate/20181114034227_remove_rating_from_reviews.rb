class RemoveRatingFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :rating, :string
  end
end
