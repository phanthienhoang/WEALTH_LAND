@extends('layouts.app')

@section('meta-description')Công ty Bất động sản WealthLand Đà Nẵng @endsection

@section('partial-styles')
  <link rel="stylesheet" type="text/css" href="/libs/wowslider/engine/style.css" />
@endsection

@section('main-content')
<main class="index-page">
    <h1 style="display: none">Công ty Bất động sản WealthLand</h1>

    {{-- Carousel --}}
    <div class="carousel-container">
        {{-- Slider --}}
        <div id="wowslider-container1">
          <div class="ws_images">
            <ul>
              @foreach($banners as $banner)
                <li><a href="javascript:void(0)">
                <img src="{{ asset($banner->imgCoverUrl) }}" title="" alt="{{ $banner->bannerTitle }}"/></a></li>
              @endforeach
            </ul>
            <div class="ws_bullets">
              @foreach($banners as $index => $banner)
                <a href="javascript:void(0)" onclick="bannerDetail.startIntervalCarousel('{{$index}}')" title=""><span><img class="tooltip__img" src="{{ asset($banner->imgCoverUrl) }}" alt=""/><span>{{ $index + 1 }}</span></span></a>
              @endforeach
            </div>
            <div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">slider jquery</a><span>by WOWSlider.com v9.0m</span></div>
          </div>
          <div class="ws_shadow"></div>
        </div>
        {{-- End Slider --}}

        {{-- Front Widget --}}
        <div class="carousel-widget app-container">
          {{-- Banner Detail --}}
        <div class="project-description" id="banner-detail" :listString="'123123'">
            <input hidden id="banner-data" type="text" value="{{$banners}}">
            <h2 class="feature text-2">@{{ currentBanner.bannerTitle }}</h2><span class="feature-description">@{{ currentBanner.bannerSubtitle }}</span><span v-if="currentBanner.price" class="feature-description">@{{ currentBanner.price }} tỷ</span>
            <a class="btn btn-accent" :href="currentBanner.bannerHref">Xem chi tiết  @{{listString}} </a>
          </div>
          {{-- End Banner Detail --}}

          {{-- Contact Form --}}
          <form id="contact-form" @submit.prevent="postComment" action="/api/contact">
            <input type="text" v-model="form.fullname" placeholder="Vui lòng nhập họ tên" />
            <input type="text" v-model="form.phone" placeholder="Số điện thoại" />
            <input type="text" v-model="form.email" placeholder="Email" />
            <textarea v-model="form.comment" placeholder="Viết bình luận" rows="4"></textarea>
            <button class="btn btn-accent">Đăng ký tư vấn</button>
          </form>
        {{-- End contact form --}}
        </div>
        {{-- End Front Widget --}}

    </div>
    {{-- End Carousel --}}

    <section class="search-area app-container">                   
      <form class="search-form" action="{{ route('search.land') }}" method="POST">
        @csrf
        <div class="combox__wrapper">
            <div class="control__wrapper">
              <label>Giá nhà</label>
              <select class="control" placeholder="Khoảng giá" name="price">
                <option value="1">Dưới 1.5 Tỷ</option>
                <option value="2">Từ 1.5 Tỷ - 2.5 Tỷ</option>
                <option value="3">Từ 2.5 Tỷ - 4 Tỷ</option>
                <option value="4">Từ 4 Tỷ đến 7 Tỷ</option>
                <option value="5">Trên 7 Tỷ</option>
              </select>
            </div>
            <div class="control__wrapper">
              <label>Diện tích</label>
              <select class="control" placeholder="Diện tích" name="area">
                <option value="1">Dưới 85 m2</option>
                <option value="2">Từ 85 m2 - 135 m2</option>
                <option value="3">Từ 135 m2 - 200 m2</option>
                <option value="4">Từ 200 m2 - 320 m2</option>
                <option value="5">Trên 320 m2</option>
              </select>
            </div>
            <div class="control__wrapper">
              <label>Phòng ngủ</label>
              <select class="control" placeholder="Số phòng ngủ" name="bedroom">
                <option value="1">Từ 1 - 2 phòng</option>
                <option value="2">Từ 3 - 4 phòng</option>
                <option value="3">Trên 4 phòng</option>
              </select>
            </div>
            <div class="control__wrapper">
              <label>Phòng tắm</label>
              <select class="control" placeholder="Số phòng tắm" name="bathroom">
                <option value="1">Từ 1 - 1.5 phòng</option>
                <option value="2">Từ 2 - 3.5 phòng</option>
                <option value="3">Trên 3.5 phòng</option>
              </select>
            </div>
            <div class="control__wrapper">
              <label>Từ khoá</label>
              <input class="control" type="text" placeholder="Từ khoá tìm kiếm" name="keyword"/>
            </div>
            <div class="control__wrapper">
              <button type="submit" class="btn btn-accent">Tìm kiếm</button>
            </div>
        </div>
      </form>
    </section>

    <section class="gallery-room app-container">
        <div class="title-section">
            <h2 class="text-3">Dự án nổi bật</h2>
        </div>
        <div class="row">
            @foreach($hotestProjects as $project)
            <div class="col-12 col-sm-6 col-md-4">
                <figure class="gallery-figure-room">
                    <img alt="$project->title" data-original="{{ asset($project->imgCoverUrl) }}" />
                    <div class="title text-medium"><span>{{ $project->title}}</span></div><a class="float-title hover-darken ease-out" href="{{ route('project.single', $project->seoAlias) }}"> Chi tiết</a>
                </figure>
            </div>
            @endforeach
        </div>
    </section>
    <div class="bg-light">
        <section class="gallery-room app-container">
            <div class="title-section has-margin">
                <h2 class="text-3">Bất động sản nổi bật</h2>
            </div>
            <div class="row">
                @foreach($hotestLands as $land)
                <div class="col-12 col-md-6 col-xl-4">
                <a class="land-figure" href="{{ route('land.single', $land->seoAlias) }}"><figure class="land-figure-link"><img alt="{{ $land->title }}" data-original="{{ $land->imgCoverUrl}}"/>
                        <div class="land-details-nail">
                          <div class="land-detail-info">
                            <div class="icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                          <p>{{ $land->iArea }}m2</p>
                          </div>
                          <div class="land-detail-info">
                            <div class="icon end"><i class="fa fa-bed" aria-hidden="true"></i></div>
                            <p>{{ $land->iBedroom}}</p>
                          </div>
                          <div class="land-detail-info">
                            <div class="icon top"><i class="fa fa-bath" aria-hidden="true"></i></div>
                            <p>{{ $land->iBathroom}}</p>
                          </div>
                          <div class="land-detail-info">
                            <div class="icon smaller"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i></div>
                            <p>{{ $land->iBuiltYear }}</p>
                          </div>
                        </div>
                        <div class="land-price">{{ $land->iPrice}}T</div></figure></a>
                  </div>
                @endforeach
            </div>
        </section>
    </div>
    <section class="news-figure-list app-container">
        <div class="title-section">
            <h2 class="text-3">Tin tức</h2>
        </div>
        <div class="row">
            @foreach($lastestNews as $news)
            <div class="col-12 col-sm-6 col-md-4"><a class="news-figure-vertical" href="{{ route('news.single',  $news->slug )}}">
            <figure class="news-figure-vertical__preview"><img data-original="{{ '/'.$news->imgCoverUrl }}"/>
                <div class="date-tag bg-accent"><span class="date">{{ date("d", strtotime($news->created_at)) }}</span><span class="month">Th{{ date("d", strtotime($news->created_at)) }}</span></div>
              </figure>
              <div class="main-title-wrapper">
                <div class="main-title text-medium">
                    {{ $news->title }}
                </div>
              </div>
              <div class="split-line">
                <div></div>
              </div>
              <div class="short-description text-medium">
                {{ $news->created_at }}
              </div></a></div>
                @endforeach
        </div>
    </section>
</main>
@endsection

@section('partial-scripts')
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script type="text/javascript" src="/libs/wowslider/engine/wowslider.js"></script>
    <script type="text/javascript" src="/libs/wowslider/engine/script.js"></script>

    <script src="/js/contact-form.js"></script>
    <script src="/js/landing-page.js"></script>

    <div id='fb-root'>
    </div>
        <script>
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                js = d.createElement(s); js.id = id;
                js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
    <div class='fb-customerchat' page_id='237094363414637' theme_color='#44bec7'
        logged_in_greeting='Xin chào, tôi có thể hổ trợ gì cho bạn không?'
        logged_out_greeting='Xin chào, tôi có thể hổ trợ gì cho bạn không?'>
    </div>
@endsection
