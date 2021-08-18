const fenetre_popup = () => {
    var btnPopup = document.getElementById('btnPopup');
    var overlay = document.getElementById('overlay');
    btnPopup.addEventListener('click',openMoadl);
    const openMoadl = () => {
    overlay.style.display='block';
    }
}


export { fenetre_popup };