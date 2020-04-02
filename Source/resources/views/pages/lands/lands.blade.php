@extends('layouts.app')

@section('main-content')
<main class="index-page">
    <div class="page-header">
        <h2 class="page-title text-3">Bất động sản WealthLand</h2>
    </div>
    <section class="gallery-room container">
        <div class="title-section has-margin">
            <h2 class="text-3">Mặt bằng căn hộ 2 phòng ngủ</h2>
        </div>
        <div class="row">
            @foreach($lands as $land)
            <div class="col-6 col-md-4">
            <figure class="gallery-figure-room"><a href="{{ route('land.single', $land->seoAlias) }}">
                        <div class="image__wrapper"><img data-original="/assets/images/design_page_room_1_img_3.jpg" /></div>
                    </a></figure>
            </div>
            @endforeach
        </div>
    </section>
</main>
@endsection