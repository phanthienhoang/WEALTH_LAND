$(document).ready(function () {
    $('[data-original]').lazyload({
        threshold: 200
    })

    $('.loading-overlay').css('opacity', '0')
    setTimeout(
        function () {
            $('.loading-overlay').css('display', 'none')
            // $('.loading-overlay').css('z-index', '-1000')

        },
        1000
    )
})

var lastScrollTop = 0;

var isFixed = false

const breakPoint = 300;


$(document).click(function () {

    const nav = $('.nav-list.show')

    if (nav) {
        hideMenu()
    }
});

$("li").click(function (event) {
    event.stopPropagation();
});

$(window).scroll(() => {
    const { pageYOffset } = window

    var st = $(this).scrollTop();

    if (pageYOffset > 0) {
        isFixed = true
        $('header').addClass('fixed')
        $('header').addClass('show')
    } else {
        // if (isFixed)
        $('header').removeClass('fixed')
        $('header').removeClass('show')
    }
    // if (st > lastScrollTop) {
    //     // downscroll code

    //     if (pageYOffset < breakPoint && isFixed) {
    //         $('header').removeClass('fixed')
    //         $('header').removeClass('show')

    //         isFixed = false
    //     }

    //     if (pageYOffset >= breakPoint && isFixed) {
    //         $('header').removeClass('fixed')
    //         $('header').removeClass('show')

    //         isFixed = false
    //     }

    // } else {

    //     if (pageYOffset >= breakPoint && !isFixed) {
    //         $('header').addClass('fixed')

    //         setTimeout(
    //             function () {
    //                 $('header').addClass('show')
    //             },
    //             0
    //         )

    //         isFixed = true
    //     }
    //     // upscroll
    //     // isFixed = false

    //     if (pageYOffset <= 10) {
    //         $('header').removeClass('fixed')
    //         $('header').removeClass('show')
    //     }
    // }

    lastScrollTop = st;

})

function showMenu() {
    setTimeout(function () {
        $('.nav-list').addClass('show')
        $('.menu-backdrop').addClass('show')

        $('html').css('overflow', 'hidden')
        $('body').css('overflow', 'hidden')
    }, 0)

}

function hideMenu() {
    $('.nav-list').removeClass('show')
    $('.menu-backdrop').removeClass('show')

    $('html').css('overflow', 'auto')
    $('body').css('overflow', 'auto')
}

function initialGallery(imgUrls, indexActive) {
    let pswpElement = document.querySelectorAll('.pswp')[0];

    // alert(imgUrls)
    // build items array
    let items = (imgUrls || []).map(e => ({

        src: '/' + e,
        w: 600,
        h: 400

    }));

    // define options (if needed)
    let options = {
        // optionName: 'option value'
        // for example:
        index: indexActive // start at first slide
    };

    // Initializes and opens PhotoSwipe
    const gallery = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, items, options);
    gallery.init();
}