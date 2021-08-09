class CreateDetailBaskets < ActiveRecord::Migration[6.0]
  def change
    create_table   :detail_baskets do |t|
      t.references :ingredient_recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.references :basket, null: false, foreign_key: true
      t.float      :ingredient_quantity

      t.timestamps
    end
  end
end
