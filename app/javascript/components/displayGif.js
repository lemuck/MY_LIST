const displayGif = () => {
  const orderButton = document.getElementById("orderbutton");
  const gif = document.getElementById("gif");
  orderButton.addEventListener("click", (event) => {
    gif.classList.remove("d-none");

  });
}
export { displayGif };
