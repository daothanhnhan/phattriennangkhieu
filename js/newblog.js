/**
 * Created by Dell on 01/06/2017.
 */
$(document).ready(function (){
    $('#owl-demo1').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        dots:false,
        navText: [],
        items:3,
        responsive:{
            0:{
                items:1
            },
            768:{
                items:2
            },
            1024:{
                items:3
            }
        }
    })
});
