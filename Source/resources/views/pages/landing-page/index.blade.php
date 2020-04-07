@extends('layouts.app')

@section('meta-description')Công ty Bất động sản WealthLand Đà Nẵng @endsection

@section('main-content')
<main class="index-page">
    <h1 style="display: none">Công ty Bất động sản WealthLand</h1>
    <div class="carousel-container">
        <div class="carousel-widget app-container">
            <div class="project-description">
                <h2 class="feature text-2">BABYLON RESIDENCE</h2><span class="feature-description">458 Minh Khai, Hai Bà Trưng - Hà Nội</span><span class="feature-description">Giá chỉ từ 4 tỷ</span>
                <button class="btn btn-accent">Xem chi tiết</button>
            </div>
            <form id="contact-form" @submit.prevent="postComment" action="/api/contact">
                <input type="text" v-model="form.fullname" placeholder="Vui lòng nhập họ tên" />
                <input type="text" v-model="form.phone" placeholder="Số điện thoại" />
                <input type="text" v-model="form.email" placeholder="Email" />
                <textarea v-model="form.comment" placeholder="Viết bình luận" rows="4"></textarea>
                <button class="btn btn-accent">Đăng ký tư vấn</button>
            </form>
        </div>
    </div>
    <section class="gallery-room app-container">
        <div class="title-section">
            <h2 class="text-3">Dự án nổi bật</h2>
        </div>
        <div class="row">
            @foreach($hotestProjects as $project)
            <div class="col-12 col-sm-6 col-md-4">
                <figure class="gallery-figure-room">
                    <div class="image__wrapper"><img alt="$project->title" data-original="{{ $project->imgCoverUrl }}" /></div>
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

    <script src="/js/contact-form.js"></script>
@endsection