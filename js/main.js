//search
$(document).ready(function () {
    $(".search").hide();
    $(".menu-search").click(function () {
        $(".search").slideToggle();
    });
});
//scroll course-1
$(window).scroll(function(){
    var footer = $('.footer-area-top').offset().top -950;

    if($(window).scrollTop() >= footer){
        $('.vk-course-1-left').removeClass('fixed');
        console.log();
    }else if($(window).scrollTop() <= 400){
        $('.vk-course-1-left').removeClass('fixed');
        console.log();
    }else{
        $('.vk-course-1-left').addClass('fixed');
        console.log();
    }
});

// scorll tab-left about.php
$(window).scroll(function(){
    var footer = $('.footer-area-top').offset().top -950;

    if($(window).scrollTop() >= footer){
        $('.img-bg').removeClass('fixed');
    }else if($(window).scrollTop() <= 350){
        $('.img-bg').removeClass('fixed');
    }else{
        $('.img-bg').addClass('fixed');
    }

    // var leftContent = $(".vk-about-col .vk-about-left");
    // var rightContent = $(".vk-about-col .vk-about-right");
    //
    // $(".vk-about-col .nav-tabs").on('click', 'li', function () {
    //     var itemTarget = $(this).children('a').attr('href');
    //     var itemTargetHeight = $(itemTarget).outerHeight();
    //     // console.log(rightContent.height());
    //
    //     console.log(itemTargetHeight);
    //     if (leftContent.height() <= itemTargetHeight) {
    //         leftContent.css('height', itemTargetHeight + 'px');
    //     }else{
    //         leftContent.css('height', 'auto');
    //     }
    //
    // });


});
if($(window).innerWidth() <= 991){
    $(function(){
        $(".vk-icon-menu").show();
        $(".menu_chinh").hide();
        $(".vk-menu-sub").hide();
        $(".menu_reponsive").click(function () {
            $(".menu_chinh").slideToggle();
        });
        // return false;
    });
}else {
    $(".vk-icon-menu").hide();
}

$('#vk-top-nav ul li ').click(function(){
    $(this).children('ul.vk-menu-sub').slideToggle();
    // alert("ahihi");
    // return false;
});

// Tab khóa học
if ($(window).width() < 991) {
    $('.btn-back').hide();
    $('.col-md-7').fadeOut();
    $('.tabbable.tabs-left .nav-tabs').on('click', 'li', function (e) {

        $('.col-md-5').fadeOut();
        $('.col-md-5').removeClass('fadeInRight');
        $('.tabbable.tabs-left .col-md-7').show();
        $('.tabbable.tabs-left .col-md-7').addClass("fadeInLeft");
//            $('.tabbable.tabs-left .col-md-7').css("z-index",1);
        $('.btn-back').fadeIn();
    });

    $('.btn-back').on('click', function () {
        $('.col-md-5').show();
        $('.col-md-5').addClass('fadeInRight');
        $('.tab-right-content').addClass("fadeOut");
        $('.col-md-7').fadeOut();
//            $('.col-md-7').fade();
        $('.btn-back').hide();
    });
};


//js for select
function DropDown(el) {
    this.dd = el;
    this.placeholder = this.dd.children('span');
    this.opts = this.dd.find('.dropdown a');
    this.val = '';
    this.index = -1;
    this.initEvents();
}
    DropDown.prototype = {
        initEvents: function () {
            var obj = this;

            obj.dd.on('click', function (event) {
                $(this).toggleClass('active');
                return false;
            });

            obj.opts.on('click', function () {
                var opt = $(this);
                obj.val = opt.text();
                obj.index = opt.index();
                obj.placeholder.text(obj.val);
            });
        },
        getValue: function () {
            return this.val;
        },
        getIndex: function () {
            return this.index;
        }
    }

$(function () {

    var dd = new DropDown($('#dd'));


});


//tab about-us

$(document).ready(function() {
    $('.vk-accordion').find('.vk-accordion-toggle').click(function() {
        $(this).next().slideToggle('600');
        $(".vk-accordion-content").not($(this).next()).slideUp('600');
    });
    $('.vk-accordion-toggle').on('click', function() {
        $(this).toggleClass('active').siblings().removeClass('active');
    });
});


//tab-about
if ($(window).width() < 991) {
    $('.btn-back').hide();
    $('.vk-about-right').fadeOut();
    $('.tab-left-content .nav-tabs').on('click', 'li', function (e) {

        $('.vk-about-left').fadeOut();
        $('.vk-about-left').removeClass('fadeInRight');
        $('.vk-about-right').show();
        $('.vk-about-right').addClass("fadeInLeft");
//            $('.tabbable.tabs-left .col-md-7').css("z-index",1);
        $('.btn-back').fadeIn();
    });

    $('.btn-back').on('click', function () {
        $('.vk-about-left').show();
        $('.vk-about-left').addClass('fadeInRight');
        $('.tab-right-content').addClass("fadeOut");
        $('.vk-about-right').fadeOut();
//            $('.col-md-7').fade();
        $('.btn-back').hide();
    });
};

//tab course_2

$(document).ready(function() {
    $('.vk-accordion-child').find('.vk-accordion-toggle-child').click(function() {
        $(this).next().slideToggle('600');
        $(".vk-accordion-content-child").not($(this).next()).slideUp('600');
    });
    $('.vk-accordion-toggle-child').on('click', function() {
        $(this).toggleClass('active').siblings().removeClass('active');
    });
});

//tab faq's
$(document).ready(function() {
    $('.vk-accordion-faq').find('.vk-accordion-toggle-faq').click(function() {
        $(this).next().slideToggle('600');
        $(".vk-accordion-content-faq").not($(this).next()).slideUp('600');
    });
    $('.vk-accordion-toggle-faq').on('click', function() {
        $(this).toggleClass('active').siblings().removeClass('active');
    });
});

//Isotope active js code:
//************************

// Active isotope with jQuery code:

$(document).ready(function () {
    $('.vk-main-iso').isotope({
        itemSelector: '.item',
        percentPosition:true,
        // layoutMode: 'fitRows'
        masonry:{
            columnWidth:'.item'
        }
    });
// Isotope click function
    $('.vk-iso-nav ul li').click(function(){
        $('.vk-iso-nav ul li').removeClass('active');
        $(this).addClass('active');

        var selector = $(this).attr('data-filter');
        $('.vk-main-iso').isotope({
            filter: selector
        });
        return false;
    });
});


//menu scroll
$(window).bind('scroll', function () {
    if ($(window).scrollTop() > 50) {
        $('.nav-bar').addClass('fixed');
        $('.nav-bar').addClass('fadeInDown');
        return false;
    } else {
        $('.nav-bar').removeClass('fixed');
        $('.nav-bar').removeClass('fadeInDown');
        return false;
    }
});

//tab- career-detai
$(window).ready(function () {
    $(".vk-career .tab-content").hide();
    $('.vk-career .vk-career-tab .vk-career-item ul li a').on('click', function (e) {
        $(".vk-career-tab").hide()
        $(".vk-career .tab-content").show();
        return true;
    });
    return true;
});




