@extends('layouts.app')

@section('meta-description') {{ $project->title }} @endsection

@section('main-content')
<main>
    <div class="page-header" style="background: url(/{{ $project->imgCoverUrl }}) no-repeat center bottom; background-size: cover;">
    <h1 class="page-title text-3" >{{ $project->title }}</h1>
    </div>
    <article class="container intro-details">
        {!! $project->introduceContent !!}
    </article>
</main>
@endsection