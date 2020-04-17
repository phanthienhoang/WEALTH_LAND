@extends('layouts.app')

@section('meta-description') Thị trường Bất động sản - Danh sách Bất động sản WealthLand @endsection

@section('main-content')
<main class="index-page">
    <div class="page-header">
        <h1 class="page-title text-3">Bất động sản WealthLand</h1>
    </div>
    <section class="search-area app-container">
        <form class="search-form" action="{{ route('search.land') }}" method="POST">
          @csrf
          <div class="combox__wrapper">
              <div class="control__wrapper">
                <label>{{ trans('navbar.gianha') }}</label>
                <select class="control" placeholder="Khoảng giá" name="price">
                  <option value="1">{{ trans('navbar.duoi1ty5') }}</option>
                  <option value="2">Từ 1.5 Tỷ - 2.5 Tỷ</option>
                  <option value="3">Từ 2.5 Tỷ - 4 Tỷ</option>
                  <option value="4">Từ 4 Tỷ đến 7 Tỷ</option>
                  <option value="5">Trên 7 Tỷ</option>
                </select>
              </div>
              <div class="control__wrapper">
                <label>{{ trans('navbar.dientich') }}</label>
                <select class="control" placeholder="Diện tích" name="area">
                  <option value="1">{{ trans('navbar.duoi85m') }}</option>
                  <option value="2">Từ 85 m2 - 135 m2</option>
                  <option value="3">Từ 135 m2 - 200 m2</option>
                  <option value="4">Từ 200 m2 - 320 m2</option>
                  <option value="5">Trên 320 m2</option>
                </select>
              </div>
              <div class="control__wrapper">
                <label>{{ trans('navbar.phongngu') }}</label>
                <select class="control" placeholder="Số phòng ngủ" name="bedroom">
                  <option value="1">{{ trans('navbar.tu1den2phongngu') }}</option>
                  <option value="2">Từ 3 - 4 phòng</option>
                  <option value="3">Trên 4 phòng</option>
                </select>
              </div>
              <div class="control__wrapper">
                <label>{{ trans('navbar.phongtam') }}</label>
                <select class="control" placeholder="Số phòng tắm" name="bathroom">
                  <option value="1">{{ trans('navbar.tu1den2phongtam') }}</option>
                  <option value="2">Từ 2 - 3.5 phòng</option>
                  <option value="3">Trên 3.5 phòng</option>
                </select>
              </div>
              <div class="control__wrapper">
                <label>{{ trans('navbar.tukhoa') }}</label>
                <input class="control" type="text" placeholder="{{ trans('navbar.tukhoatimkiem') }}" name="keyword"/>
              </div>
              <div class="control__wrapper">
                <button type="submit" class="btn btn-accent">{{ trans('navbar.timkiem') }}</button>
              </div>
          </div>
        </form>
      </section>
    <section class="gallery-room container">
        <div class="title-section has-margin">
            <h2 class="text-3">Kết quả tìm kiếm</h2>
        </div>
        <div class="row" style="width: 100%">
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
