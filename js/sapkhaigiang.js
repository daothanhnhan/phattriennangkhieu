/**
 * Created by Dell on 01/06/2017.
 */
$(document).ready(function(){
    // .owl-carousel
    $('#owl-demos').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots: false,
        navText: [],
        items:2,
        responsive:{
            0:{
                items:1
            },
            768:{
                items:1
            },
            992:{
              items:1.5
            },
            1200:{
                items:2
            }
        }
    })
});
