<div class="loading-overlay"><img alt="Preloading WealthLand" src="https://batdongsan8.trustweb.vn/wp-content/themes/flatsome-child/images/preloader.gif" /></div>
<header class="container-fluid">
    <div class="menu-backdrop"><a onclick="hideMenu()"><i class="fa fa-times"></i></a></div>
    <nav>
        <div class="nav-container app-container">
            <div class="toggle-menu-button-container"><a><i class="fa fa-bars" aria-hidden="true" onclick="showMenu()"></i></a></div>
            <div class="brand"><a class="logo-website"><img alt="Logo WealthLand" class="logo" data-original="/assets/images/Logo.png" /></a></div>
            <div class="toggle-menu-button-container" style="z-index: -1"><a href="tel:0977175923"><i class="fa fa-volume-control-phone"></i></a></div>
            <ul class="nav-list">
                <li class="nav-search">
                    <form class="search__container">
                        <input type="text" placeholder="Search..." />
                        <button class="btn btn-accent"><i class="fa fa-search"></i></button>
                    </form>
                </li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'landing-page') === 0 ? 'active' : '' }}" href="{{ route('landing-page')}}"> {{ trans('navbar.trangchu') }}</a></li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'introduction.') === 0 ? 'active' : '' }}" href="{{ route('introduction.list')}}"> {{ trans('navbar.gioithieu') }}</a>
                    <ul>
                        <li> <a class="nav-link" href="{{ route('introduction.list').'?tab=gioi-thieu-chung' }}">Giới thiệu chung</a></li>
                        <li> <a class="nav-link" href="{{ route('introduction.list').'?tab=gioi-thieu-nang-luc' }}">Giới thiệu năng lực</a></li>
                        <li><a class="nav-link" href="{{ route('introduction.list').'?tab=dinh-huong-phat-trien' }}">Định hướng phát triển</a></li>
                    </ul>
                </li>
                {{-- <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'land.') ===0 ? 'active' : '' }}" href="{{ route('land.list')}}"> {{ trans('navbar.batdongsan') }}</a></li> --}}
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'project.') === 0 ? 'active' : '' }}" href="{{ route('project.list')}}">{{ trans('navbar.duanbds') }}</a>
                    <ul>
                        @foreach ($category_projects as $item)
                            <li> <a class="nav-link" href="{{ route('categories.project.filter', $item ) }}">{{ $item->category_project_land_name_vi }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'news.') === 0 ? 'active' : '' }}" href="{{ route('news.list')}}"> {{ trans('navbar.tintuc') }}</a>
                    <ul>
                        @foreach ($categories as $item)
                            <li> <a class="nav-link" href="{{ route('categories.filter', $item ) }}">{{ $item->title_vi }}</a></li>
                        @endforeach
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'galleries.') === 0 ? 'active' : '' }}" href="javascript:;"> {{ trans('navbar.thuvienhinhanh') }}</a>
                   <ul>
                        <li> <a class="nav-link" href="{{ route('galleries.getNewsGallery', $item ) }}">{{ trans('navbar.gallery-anhtintuc') }}</a></li>  
                        <li> <a class="nav-link" href="{{ route('galleries.getProjectGallery', $item ) }}">{{ trans('navbar.gallery-anhduan') }}</a></li>  
                        <li> <a class="nav-link" href="{{ route('galleries.getActivityGallery', $item ) }}">{{ trans('navbar.gallery-anhlienquan') }}</a></li>  
                    </ul>
                </li>
                <li class="nav-item"><a class="nav-link {{ strpos(Route::currentRouteName(), 'contact.') === 0 ? 'active' : '' }}" href="{{ route('contact.index')}}"> {{ trans('navbar.lienhe') }}</a></li>
                {{-- <li class="nav-item"><a class="nav-link" href="{{ route('user.change-language',['en'])}}" >Anh</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ route('user.change-language',['vi'])}}" >Việt</a></li> --}}
            </ul>
        </div>
    </nav>
</header>
