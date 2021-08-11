class AddColumnToRecipe < ActiveRecord::Migration[6.0]
    def change
        add_column :recipes, :person_number, :integer, default: 1
    end
end