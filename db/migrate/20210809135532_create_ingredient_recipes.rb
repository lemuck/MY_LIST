class CreateIngredientRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table   :ingredient_recipes do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.float      :ingredient_quantity
      t.integer    :person_number

      t.timestamps
    end
  end
end
