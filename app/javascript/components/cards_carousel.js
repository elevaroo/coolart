export const cardsCarousel = () => {


    $("#myCarousel").on("slide.bs.carousel", function(e) {
      var $e = $(e.relatedTarget);
      var idx = $e.index();
      var itemsPerSlide = 3;
      var totalItems = $(".multi .carousel-item").length;

      if (idx >= totalItems - (itemsPerSlide - 1)) {
        var it = itemsPerSlide - (totalItems - idx);
        for (var i = 0; i < it; i++) {
          // append slides to end
          if (e.direction == "left") {
            $(".multi .carousel-item")
              .eq(i)
              .appendTo(".multi .carousel-inner");
          } else {

            $(".multi .carousel-item")
              .eq(0)
              .appendTo($(this).find(".multi .carousel-inner"));
          }
        }
      }
    });
}
