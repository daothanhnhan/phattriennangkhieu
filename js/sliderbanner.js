/**
 * Created by Dell on 01/06/2017.
 */
$(document).ready(function() {
    $('#owl-demo3').owlCarousel({
        loop:true,
        margin:10,
        dots:false,
        items:6,
        autoplay:true,
        responsive:{
            0:{
                items:1
            },
        }
    });

    $('#vk-owl-demo-singer-slider').owlCarousel({
        center: true,
        items:2,
        loop:true,
        margin:10,
        nav:true,
        navText: [],
        autoplay:true,
        responsive:{
            600:{
                items:2
            }
        }
    });


});
