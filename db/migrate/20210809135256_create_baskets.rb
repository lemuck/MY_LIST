class CreateBaskets < ActiveRecord::Migration[6.0]
  def change
    create_table   :baskets do |t|
      t.references :user, null: false, foreign_key: true
      t.float      :total_price

      t.timestamps
    end
  end
end
