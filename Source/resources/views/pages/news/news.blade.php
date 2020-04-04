@extends('layouts.app')

@section('main-content')
<main>
    <div class="page-header">
        <h1 class="page-title text-3">Tin tức WealthLand</h1>
    </div>
    <div class="app-container">
        <div class="row">
            <section class="blog-list col-12 col-md-9">
                @foreach($list as $data)
                <a class="blog-list-item" href="{{route('news.single', $data->slugVI)}}">
                    <div class="news-figure">
                    <div class="image__wrapper">
                            <img data-original="{{ $data->imgCoverUrl }}" />
                            <div class="date-tag bg-accent"><span class="date">{{ date("d", strtotime($data->created_at)) }}</span><span class="month">Th{{ (int)date("m", strtotime($data->created_at)) }}</span></div>
                        </div>
                    </div>
                    <div class="text-info">
                        <div class="main-title-wrapper">
                            <p class="main-title text-medium">{{ $data->titleVI }}</p>
                        </div>
                        <div class="split-line">
                            <div></div>
                        </div>
                        <p class="short-description text-medium">
                            {{ $data->created_at }}
                        </p>
                    </div>
                </a>
                @endforeach
            </section>

            <aside class="function-container col-12 col-md-3">
                <form class="search-form">
                    <input type="text" placeholder="Search..." />
                    <button class="btn btn-accent"><i class="fa fa-search"></i></button>
                </form>
                <div class="blog-group">
                    <div class="title">BÀI VIẾT MỚI</div>
                    <ul class="blog-list">
                        @foreach($list as $data)
                        <li><a href="{{ route('news.single', $data->slug) }}">{{ $data->titleVI }}</a></li>
                        @endforeach

                    </ul>
                </div>
                <div class="blog-group">
                    <div class="title">Phản hồi gần đây</div>
                    <ul class="blog-list"></ul>
                </div>
                <div class="blog-group">
                    <div class="title">Lưu trữ</div>
                    <ul class="blog-list">
                        <li><a href="">Tháng Tám 2019</a></li>
                    </ul>
                </div>
                <div class="blog-group">
                    <div class="title">Chuyên mục</div>
                    <ul class="blog-list">
                        <li><a href="">Tin Bất động sản</a></li>
                    </ul>
                </div>
                <div class="blog-group">
                    <div class="title">Meta</div>
                    <ul class="blog-list">
                        <li><a href="">Đăng nhập</a></li>
                        <li><a href="">RSS cho bài viết</a></li>
                        <li><a href="">Dòng thông tin phản hồi</a></li>
                    </ul>
                </div>
            </aside>
        </div>
    </div>
</main>
@endsection