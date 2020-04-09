@extends('layouts.app')

@section('main-content')
<main>
    <div class="page-header">
        <h2 class="page-title text-3">Tin tức WealthLand</h2>
    </div>
    <div class="app-container container-fluid">
        <div class="row">
            <article class="blog-detail col-md-9">
                <div class="blog-header"><span class="blog-category">Tin bất động sản</span>
                    <h1 class="blog-title">{{ $data->title }}</h1>
                </div>
                <div class="blog-content">
                    {!! $data->content !!}
                </div>
            </article>
            <aside class="function-container col-md-3">
                <form class="search-form">
                    <input type="text" placeholder="Search..." />
                    <button class="btn btn-accent"><i class="fa fa-search"></i></button>
                </form>
                <div class="blog-group">
                    <div class="title">BÀI VIẾT MỚI</div>
                    <ul class="blog-list">
                        @foreach($latest as $news)
                        <li><a href="">{{ $news->title }}</a></li>
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