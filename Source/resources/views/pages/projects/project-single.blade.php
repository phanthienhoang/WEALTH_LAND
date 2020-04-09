@extends('layouts.app')

@section('meta-description') {{ $project->title }} @endsection

@section('partial-styles')
    @include('partials.photoswipe.photoswipe-styles')
@endsection

@section('main-content')
<main>
    <div class="page-header" style="background: url('{{ asset($project->imgCoverUrl) }}') no-repeat center bottom; background-size: cover;">
    <h1 class="page-title text-3" >{{ $project->title }}</h1>
    </div>
    <article class="container intro-details">
        {!! $project->introduceContent !!}

        @if(count(json_decode($project->imgUrls)) > 0)
        <div class="land-gallery">
            <h2 class="text-3 mb-4" style="text-transform: uppercase">Hình ảnh</h2>

            <div class="row clear-fix">
                @foreach(json_decode($project->imgUrls) as $index => $imgUrl)
              <div class="col-6 col-sm-6 col-md-4 col-xl-3"><a class="land-gallery-item" onclick="initialGallery({{ $project->imgUrls }}, {{$index}})">
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