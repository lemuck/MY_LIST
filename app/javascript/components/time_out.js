const timeOutAlert = () => {

  if (document.querySelector(".alert-info")) {

  	const alertInfo = document.querySelector(".alert-info");
  	setTimeout(() => {
      hiddenAlert(alertInfo)
      }, 3500);
  };
};

const hiddenAlert = (alert) => {
  alert.classList.add("d-none");
};

export { timeOutAlert };
