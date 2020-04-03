@extends('layouts.app')

@section('main-content')
<main class="index-page">
    <div class="page-header">
        <h2 class="page-title text-3"> Dự án từ WealthLand </h2>
    </div>
    <section class="gallery-room container">
        <div class="row">
            @foreach($projects as $project)
            <div class="col-12 col-md-4">
                <figure class="gallery-figure-room">
                    <div class="image__wrapper"><img data-original="{{ $project->imgCoverUrl }}" /></div>
                    <div class="title text-medium"><span>{{ $project->title }}</span></div><a class="float-title hover-darken ease-out" href="{{route('project.single', $project->seoAlias)}}"> Chi tiết</a>
                </figure>
            </div>
            @endforeach
        </div>
    </section>
</main>
@endsection