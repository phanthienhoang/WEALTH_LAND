var lastScrollTop = 0;

var isFixed = false

const breakPoint = 300;

$(window).scroll(() => {
    const { pageYOffset, innerWidth } = window

    var st = $(this).scrollTop();
    if (st > lastScrollTop) {
        // downscroll code

        if (pageYOffset < breakPoint && isFixed) {
            $('header').removeClass('fixed')
            $('header').removeClass('show')

            isFixed = false
        }

        if (pageYOffset >= breakPoint && isFixed) {
            $('header').removeClass('fixed')
            $('header').removeClass('show')

            isFixed = false
        }

    } else {

        if (pageYOffset >= breakPoint && !isFixed) {
            $('header').addClass('fixed')

            setTimeout(
                function () {
                    $('header').addClass('show')
                },
                0
            )

            isFixed = true
        }
        // upscroll
        // isFixed = false

        if (pageYOffset <= 10) {
            $('header').removeClass('fixed')
            $('header').removeClass('show')
        }
    }

    lastScrollTop = st;

})

function showMenu() {
    $('.nav-list').addClass('show')
    $('.menu-backdrop').addClass('show')

    $('html').css('overflow','hidden')
    $('body').css('overflow', 'hidden')
}

function hideMenu() {
    $('.nav-list').removeClass('show')
    $('.menu-backdrop').removeClass('show')

    $('html').css('overflow','auto')
    $('body').css('overflow', 'auto')
}