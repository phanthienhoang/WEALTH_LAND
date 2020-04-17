
@extends('layouts.app')

@section('main-content')
<main class="index-page">
    <div class="page-header">
        <h2 class="page-title text-3">Thư viện Ảnh -{{ $title }}</h2>
    </div>
    <section class="gallery-room container">
        <div class="row">
            @foreach($gallery as $item)
            <div class="col-12 col-md-4">
                <figure class="gallery-figure-room">
                    <div class="image__wrapper"><img data-original="{{ asset($item->imgCoverUrl )}}" /></div>
                    <div class="title text-medium"><span>{{ $item->created_at }}</span></div>
                </figure>
            </div>
            @endforeach
        </div>
    </section>
</main>
@endsection