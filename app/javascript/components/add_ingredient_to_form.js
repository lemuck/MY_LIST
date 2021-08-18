const addIngredientBtn = () => {
  const createButton = document.getElementById("btnAddIngredient");
  createButton.addEventListener("click", () => {
    const lastId = document.querySelector("#fieldsetContainer").lastElementChild.id.split('-')[1];
    const newId = parseInt(lastId, 10) + 1;
    const newFieldset = document.querySelector('[id="ingredient-0"]').outerHTML.replace(/ingredient-0/g,`ingredient-${newId}`).replace(/ingredient-name-0/g,`ingredient-name-${newId}`);
    // console.log(newFieldset);
    
    document.querySelector("#fieldsetContainer").insertAdjacentHTML("beforeend", newFieldset);
  });
};

export { addIngredientBtn };