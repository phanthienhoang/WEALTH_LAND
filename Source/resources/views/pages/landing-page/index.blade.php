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
            <a class="btn btn-accent" :href="currentBanner.bannerHref">{{ trans('navbar.xemchitiet') }} @{{listString}} </a>
          </div>
          {{-- End Banner Detail --}}

          {{-- Contact Form --}}
          <form id="contact-form" @submit.prevent="postComment" action="/api/contact">
            <input type="text" v-model="form.fullname" placeholder="Vui lòng nhập họ tên" />
            <input type="text" v-model="form.phone" placeholder="Số điện thoại" />
            <input type="text" v-model="form.email" placeholder="Email" />
            <textarea v-model="form.comment" placeholder="Viết bình luận" rows="4"></textarea>
            <button class="btn btn-accent">{{ trans('navbar.dangkytuvan') }}</button>
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
    <section class="hot-projects app-container">
      <div class="title-section">
        <h2 class="text-3">Dự án nổi bật</h2>
      </div>
      <div class="hot-projects-container">
      <figure class="hot-project"><img data-original="{{$hotestProjects[0]->imgCoverUrl}}"/>
          <figcaption>
          <p class="hot-project__title">{{$hotestProjects[0]->titleVI}}</p>
          <p class="hot-project__description">{{$hotestProjects[0]->description_vi}}</p><a class="link-project" href="{{route('project.single',$hotestProjects[0]->seoAlias)}}">{{ trans('navbar.xemchitiet') }} >></a>
          </figcaption>
        </figure>
       
        <figure class="hot-project"><img data-original="{{$hotestProjects[1]->imgCoverUrl}}"/>
          <figcaption>
            <p class="hot-project__title">{{$hotestProjects[1]->titleVI}}</p>
            <p class="hot-project__description">{{$hotestProjects[1]->description_vi}}</p><a class="link-project" href="{{route('project.single',$hotestProjects[1]->seoAlias)}}">{{ trans('navbar.xemchitiet') }} >></a>
          </figcaption>
        </figure>
        <figure class="hot-project"><img data-original="{{$hotestProjects[2]->imgCoverUrl}}"/>
          <figcaption>
          <p class="hot-project__title">{{$hotestProjects[2]->titleVI}}</p>
            <p class="hot-project__description">{{$hotestProjects[2]->description_vi}}</p><a class="link-project" href="{{route('project.single',$hotestProjects[2]->seoAlias)}}">{{ trans('navbar.xemchitiet') }} >></a>
        </figure>
      </figcaption>
      </div>
    </section>
    <section class="gallery-room app-container">
        <div class="title-section">
            <h2 class="text-3">{{ trans('navbar.duannoibat') }}</h2>
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
                <h2 class="text-3">{{ trans('navbar.bdsnoibat') }}</h2>
            </div>
          </li>
          <li>
            <div id="indexLand"><a id="add-class-land"href="javascript:;"><i class="fa fa-bookmark-o" aria-hidden="true"></i>Đất nền</a>

              
            </div>
          </li>
          <li>
            <div id="indexBDS"><a id="add-class-BDS" href="javascript:;"><i class="fa fa-bookmark-o" aria-hidden="true"></i>BĐS Nghỉ dưỡng</a>
            </div>
          </li>
          <li>
            <div id="indexVilla"><a id="add-class-Villa" href="javascript:;"><i class="fa fa-bookmark-o" aria-hidden="true"></i>Nhà phố biệt thự</a>
            </div>
          </li>
          <li>
            <div id="indexOfficetel"><a id="add-class-Officetel" href="javascript:;"><i class="fa fa-bookmark-o" aria-hidden="true"></i>Officetel</a>
            </div>
          </li>
        </ul>
      </div>
        <div id="call-data-api" class="row">
         
          {{-- <div  class="col-12 col-sm-6 col-md-4" >
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div> --}}
          {{-- <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span>
              </div>
              <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div>
          <div class="col-12 col-sm-6 col-md-4">
            <figure class="gallery-figure-room"><img data-original="/assets/images/phong-giai-tr.jpg"/>
              <div class="title text-medium">
                <h4>ROOM IN HOUSE</h4>
                <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
              </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
            </figure>
          </div> --}}
        </div>
    </section>
    </div>
    <section class="news-figure-list app-container">
        <div class="title-section">
            <h2 class="text-3">{{ trans('navbar.tintuc') }}</h2>
        </div>
        <div class="row">
            @foreach($lastestNews as $news)
            <div class="col-12 col-sm-6 col-md-4"><a class="news-figure-vertical" href="{{ route('news.single',  $news->slug )}}">
            <figure class="news-figure-vertical__preview"><img data-original="{{ asset($news->imgCoverUrl) }}"/>
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


@push('viewsproject')

<script>
  
$( document ).ready(function() {
  $('#add-class-all').addClass('active');
    $.ajax({
      url:"{{route('project.api.call.data')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
  });



  $("#indexAll" ).click(function() {
    $('#add-class-all').addClass('active');
    $('#add-class-apartment').removeClass('active');
    $('#add-class-Officetel').removeClass('active');
    $('#add-class-BDS').removeClass('active');
    $('#add-class-Villa').removeClass('active');
    $('#add-class-land').removeClass('active');
    $.ajax({
      url:"{{route('project.api.call.data')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });

// ========================== CĂN HỘ =============================================>
  $("#indexApartment" ).click(function() {
    $('#add-class-all').removeClass('active');
    $('#add-class-apartment').addClass('active');
    $('#add-class-Officetel').removeClass('active');
    $('#add-class-BDS').removeClass('active');
    $('#add-class-Villa').removeClass('active');
    $('#add-class-land').removeClass('active');
    $.ajax({
      url:"{{route('project.api.call.indexApartment')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });


// ========================== ĐẤT NỀN =============================================>
  $("#indexLand" ).click(function() {
    $('#add-class-all').removeClass('active');
    $('#add-class-apartment').removeClass('active');
    $('#add-class-Officetel').removeClass('active');
    $('#add-class-BDS').removeClass('active');
    $('#add-class-Villa').removeClass('active');
    $('#add-class-land').addClass('active');
    $.ajax({
      url:"{{route('project.api.call.indexLand')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });

  // ========================== BĐS NGHỈ DƯỠNG =============================================>

  $("#indexBDS" ).click(function() {
    $('#add-class-all').removeClass('active');
    $('#add-class-apartment').removeClass('active');
    $('#add-class-Officetel').removeClass('active');
    $('#add-class-BDS').addClass('active');
    $('#add-class-Villa').removeClass('active');
    $('#add-class-land').removeClass('active');
    $.ajax({
      url:"{{route('project.api.call.indexBDS')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });


  // ========================== NHÀ PHỐ BIỆT THỰ =============================================>

  $("#indexVilla" ).click(function() {
    $('#add-class-all').removeClass('active');
    $('#add-class-apartment').removeClass('active');
    $('#add-class-Officetel').removeClass('active');
    $('#add-class-BDS').removeClass('active');
    $('#add-class-Villa').addClass('active');
    $('#add-class-land').removeClass('active');
    $.ajax({
      url:"{{route('project.api.call.indexVilla')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });


  // ========================== xOfficetel=============================================>

  $("#indexOfficetel" ).click(function() {
    $('#add-class-all').removeClass('active');
    $('#add-class-apartment').removeClass('active');
    $('#add-class-Officetel').addClass('active');
    $('#add-class-BDS').removeClass('active');
    $('#add-class-Villa').removeClass('active');
    $('#add-class-land').removeClass('active');
    $.ajax({
      url:"{{route('project.api.call.Officetel')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });

}); 

    </script>
@endpush