<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-162930232-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-162930232-1');
</script>

<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>WealthLand - Bất động sản Thịnh vượng</title>
    <link rel="stylesheet" href="/assets/css/bootstrap-grid.min.css"/>
    
     {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> --}}
    <link rel="stylesheet" href="/assets/css/style.css"/>
    <link rel="stylesheet" href="/css/app.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
    @yield('partial-styles')

    <meta name="description" content="@yield('meta-description')">
  </head>
  <body scroll="no">
    @include('partials.header')

    @yield('main-content')

    <script src="/assets/js/jquery.min.js"></script>
    {{-- @yield('partial-scripts')
     --}}

    <script src="https://cdnjs.cloudflare.com/ajax/libs/photoswipe/4.1.3/photoswipe-ui-default.min.js" integrity="sha256-UKkzOn/w1mBxRmLLGrSeyB4e1xbrp4xylgAWb3M42pU=" crossorigin="anonymous"></script>
    @yield('partial-scripts')
    <script type="text/javascript" src="/assets/js/jquery.lazyload.js"></script>
    <script src="/assets/js/all.js"></script>

    @include('partials.footer')

    @yield('partial-scripts')
    @stack('viewscount')
  </body>
</html>