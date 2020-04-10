@extends('layouts.app')

@section('meta-description') {{ $land->title }} @endsection

@section('partial-styles')
    @include('partials.photoswipe.photoswipe-styles')
@endsection

@section('main-content')
<main>
    <div class="page-header" style="background: url('{{ asset($land->imgCoverUrl) }}') no-repeat center bottom; background-size: cover">
        <h1 class="page-title text-3">{{ $land->title }}</h1>
    </div>

    <section class="project-details app-container">
        <div class="title-section has-margin">
            <h2 class="text-3">Thông tin chi tiết</h2>
        </div>
        <div class="detail-container">
            <div class="detail-figure"><img alt="Năm xây dựng" data-original="/assets/icons/icon_calendar.png" />
                <div class="icon-label">Xây dựng</div>
                <div class="info">Năm {{ $land->iBuiltYear }}</div>
            </div>
            <div class="detail-figure"><img alt="Diện tích bất động sản" data-original="/assets/icons/icon_dimension.png" />
                <div class="icon-label">diện tích</div>
                <div class="info">{{ $land->iArea }} m2</div>
            </div>
            <div class="detail-figure"><img alt="Gần khu vực đỗ xe" data-original="/assets/icons/icon_parking.png" />
                <div class="icon-label">bãi gửi xe</div>
                <div class="info">{{ $land->iParking}}</div>
            </div>
            <div class="detail-figure"><img alt="Số phòng ngủ căn hộ" data-original="/assets/icons/icon_bed.png" />
                <div class="icon-label">phòng ngủ</div>
                <div class="info">{{ $land->iBedroom }}</div>
            </div>
            <div class="detail-figure"><img alt="Số phòng tắm căn hộ" data-original="/assets/icons/icon_bath.png" />
                <div class="icon-label">PHÒNG tắm</div>
                <div class="info">{{ $land->iBathroom }}</div>
            </div>
        </div>
    </section>

    <article class="container intro-details">
        {!! $land->introduceContent !!}

        @if(count(json_decode($land->imgUrls)) > 0)
        <div class="land-gallery">
            <h2 class="text-3 mb-4" style="text-transform: uppercase">Hình ảnh</h2>
            <div class="row clear-fix">
                @foreach(json_decode($land->imgUrls) as $index => $imgUrl)
              <div class="col-6 col-sm-6 col-md-4 col-xl-3"><a class="land-gallery-item" onclick="initialGallery({{ $land->imgUrls }}, {{$index}})">
              <figure class="land-gallery-item__wrapper"><img data-original="{{ '/'.$imgUrl }}"/></figure></a></div>
                @endforeach
            </div>
          </div>
        @endif
    </article>
</main>
@endsection

@include('partials.photoswipe.photoswipe')

@section('partial-scripts')
    @include('partials.photoswipe.photoswipe-scripts')
@endsection
