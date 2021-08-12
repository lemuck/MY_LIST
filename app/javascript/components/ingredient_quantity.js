const ingredientQuantityChange = () => {
  const ingQuantities = document.querySelectorAll(".ingredient-recipe-quantity");
  const fixedQuantities = [];
  const numberPerson = document.getElementById("recipe_person_number");
  ingQuantities.forEach(el => {
    fixedQuantities.push(parseInt(el.innerHTML)/parseInt(numberPerson.value));
  });
  if (numberPerson) {

    const dynamicPrice = (numberPersonValue) => {
      const insertNewQuantity = (newQty, index) => {
        ingQuantities[index].innerHTML = newQty;
      };

      fixedQuantities.forEach((oneQuantity, index) => {
        let newQuantity = numberPersonValue * oneQuantity;
        insertNewQuantity(newQuantity, index)
      });
    };
    numberPerson.addEventListener("change", (event) => {
      dynamicPrice(parseInt(numberPerson.value))
    });
  };
};

export { ingredientQuantityChange };