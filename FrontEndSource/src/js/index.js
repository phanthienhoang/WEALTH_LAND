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