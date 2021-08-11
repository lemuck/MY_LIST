class RemoveColumnToIngredientRecipe < ActiveRecord::Migration[6.0]
    def change
        remove_column :ingredient_recipes, :person_number
    end
end