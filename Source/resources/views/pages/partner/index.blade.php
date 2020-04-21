@extends('layouts.app')

@section('meta-description')
    Liên hệ tư vấn, hỗ trợ mua bán Bất động sản, đất đai, căn hộ, dự án bất động sản WealthLand
@endsection

@section('main-content')
<main id="introduction-tabs">
    <div class="page-header">
        <h1 class="page-title text-3"></h1><span class="page-sub-title"></span>
    </div>

    {{-- <section  class="control-tabs container app-container p-0">
        <div class="row" style="width: 100%" id="introduction-tab-api">
          
            <div class="col-12 col-md-4" v-for="intro in list">
                <button onclick=""  class="btn btn-outline">{{$partner->title}}</button>
            </div>
        </div>

    </section> --}}

    <article class="app-container intro-details">
        <div id="call-data-introduct-api">
            {!! $partner->content !!}
        </div>
    </article>
</main>
@endsection

@section('partial-scripts')

@endsection