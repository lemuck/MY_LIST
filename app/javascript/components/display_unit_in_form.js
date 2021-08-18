const displayIngredientUnit = () => {
  const ingredientName = document.getElementById("ingredient-name-0");
  
  const allIng = document.getElementById("all-ingredientsftw");
  
  ingredientName.addEventListener("change", () => {
    console.log(allIng.dataset.ingredient);

  });

};

// export { displayIngredientUnit };