@extends('layouts.app')

@section('main-content')
<main>
    <div class="page-header" style="background: url(/{{ $project->imgCoverUrl }}) no-repeat center bottom; background-size: cover;">
    <h2 class="page-title text-3" >{{ $project->title }}</h2>
    </div>
    <article class="container intro-details">
        {!! $project->introduceContent !!}
    </article>
</main>
@endsection