@extends('layouts.app')

@section('meta-description') {{ $land->title }} @endsection

@section('main-content')
<main>
    <div class="page-header" style="background: url(/{{ $land->imgCoverUrl }}) no-repeat center bottom; background-size: cover">
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

        

    </article>
</main>
@endsection