const like = () => {
    $(function() {
        $(".heart").on("click", function() {
          $(this).toggleClass("is-active");
        });
      });
}

export { like };