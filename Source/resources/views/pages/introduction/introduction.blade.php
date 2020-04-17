@extends('layouts.app')

@section('meta-description')
    Liên hệ tư vấn, hỗ trợ mua bán Bất động sản, đất đai, căn hộ, dự án bất động sản WealthLand
@endsection

@section('main-content')
<main id="introduction-tabs">
    <div class="page-header">
        <h1 class="page-title text-3">@{{ currentIntro?.title }}</h1><span class="page-sub-title"></span>
    </div>

    <section class="control-tabs container app-container p-0">
        <div class="row" style="width: 100%">
          <div class="col-12 col-md-4" v-for="intro in list">
            <button @click="setCurrentSlug(intro.slug)" :class="{'active': intro.slug == currentSlug}" class="btn btn-outline">@{{ intro.title_vi }}</button>
          </div>
        </div>
      </section>

    <article class="app-container intro-details">
        <div v-html="currentIntro?.content"></div>
    </article>
</main>
@endsection

@section('partial-scripts')
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <script src="/js/introduction.js"></script>
@endsection