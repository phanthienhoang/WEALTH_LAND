@extends('layouts.app')

@section('meta-description') Thị trường Bất động sản - Danh sách Bất động sản WealthLand @endsection

@section('main-content')
<main class="index-page">
    <div class="page-header">
        <h1 class="page-title text-3">Bất động sản WealthLand</h1>
    </div>
    <section class="gallery-room container">
        <div class="title-section has-margin">
            <h2 class="text-3">Kết quả tìm kiếm</h2>
        </div>
        <div class="row">
            @if (count($result) === 0)     
                <h2 class="text-3">Không có bất động sản phù hợp</h2>
            @else
                @foreach($result as $land)
                <div class="col-12 col-md-6 col-xl-4">
                <a class="land-figure" href="{{ route('land.single', $land->seoAliasVI) }}"><figure class="land-figure-link"><img alt="{{ $land->titleVI }}" data-original="{{ asset($land->imgCoverUrl)}}"/>
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
            @endif
        </div>
    </section>
</main>
@endsection