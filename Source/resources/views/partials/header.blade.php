<div class="loading-overlay"><img src="https://batdongsan8.trustweb.vn/wp-content/themes/flatsome-child/images/preloader.gif" /></div>
<header class="container-fluid">
    <div class="menu-backdrop"><a onclick="hideMenu()"><i class="fa fa-times"></i></a></div>
    <nav>
        <div class="nav-container app-container">
            <div class="toggle-menu-button-container"><a><i class="fa fa-bars" aria-hidden="true" onclick="showMenu()"></i></a></div>
            <div class="brand"><a class="logo-website"><img class="logo" data-original="/assets/images/logo_babylon.png" /></a></div>
            <div class="toggle-menu-button-container"><a href="tel:0935418749"><i class="fa fa-volume-control-phone"></i></a></div>
            <ul class="nav-list">
                <li class="nav-search">
                    <form class="search__container">
                        <input type="text" placeholder="Search..." />
                        <button class="btn btn-accent"><i class="fa fa-search"></i></button>
                    </form>
                </li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'landing-page') === 0 ? 'active' : '' }}" href="{{ route('landing-page')}}"> Trang chủ </a></li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'land.') ===0 ? 'active' : '' }}" href="{{ route('land.list')}}"> Bất động sản </a></li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'project.') === 0 ? 'active' : '' }}" href="{{ route('project.list')}}"> Dự án BĐS </a></li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'news.') === 0 ? 'active' : '' }}" href="{{ route('news.list')}}"> Tin tức </a></li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'contact.') === 0 ? 'active' : '' }}" href="{{ route('contact.index')}}"> Liên hệ </a></li>
            </ul>
        </div>
    </nav>
</header>