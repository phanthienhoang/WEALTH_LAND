<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <title>WealthLand - Bất động sản Thịnh vượng</title>
    <link rel="stylesheet" href="/assets/css/bootstrap-grid.min.css"/>
    
     {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> --}}
    <link rel="stylesheet" href="/assets/css/style.css"/>
    <link rel="stylesheet" href="/css/app.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    @yield('partial-styles')

    <meta name="description" content="@yield('meta-description')">

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-162930232-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-162930232-1');
    </script>
  </head>
  <body scroll="no">
    @include('partials.header')

    @yield('main-content')

    <script src="/assets/js/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe-ui-default.min.js" integrity="sha256-UKkzOn/w1mBxRmLLGrSeyB4e1xbrp4xylgAWb3M42pU=" crossorigin="anonymous"></script>
    @yield('partial-scripts')
    <script type="text/javascript" src="/assets/js/jquery.lazyload.js"></script>
    <script src="/assets/js/all.js"></script>

    @include('partials.footer')
    @stack('viewscount')
    @stack('viewsproject')

    <div id='fb-root'>
    </div>

    <div class='fb-customerchat' page_id='237094363414637' theme_color='#44bec7'
        logged_in_greeting='Xin chào, tôi có thể hổ trợ gì cho bạn không?'
        logged_out_greeting='Xin chào, tôi có thể hổ trợ gì cho bạn không?'>
    </div>

    <script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    </script>
  </body>
</html>




     
  