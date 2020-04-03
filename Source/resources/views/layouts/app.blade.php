<html>
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>WealthLand - Bất động sản Thịnh vượng</title>
    <link rel="stylesheet" href="/assets/css/bootstrap-grid.min.css"/>
    
     {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> --}}
    <link rel="stylesheet" href="/assets/css/style.css"/>
    <link rel="stylesheet" href="/css/app.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>

  </head>
  <body scroll="no">
    @include('partials.header')

    @yield('main-content')

    <script src="/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="/assets/js/jquery.lazyload.js"></script>
    <script src="/assets/js/all.js"></script>

    @include('partials.footer')

    @yield('partial-scripts')
  </body>
</html>