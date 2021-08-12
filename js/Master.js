$('.owl-carousel').owlCarousel({
    loop: true,
    margin: 5,
    nav: true,
    autowidth: true,
    center: true,
    responsive: {
        0: {
            items: 0
        },
        600: {
            items: 0
        },
        1000: {
            items: 2
        }
    },
    autoplay: true,
    autoplayTimeout: 4000,
    autoplayHoverPause: true
})






var card_list_books = document.getElementsByClassName("card-list-books");

var location_class = function () {
    window.location = "#"
};

for (var i = 0; i < card_list_books.length; i++) {
    card_list_books[i].addEventListener('click', location_class, false);
}



