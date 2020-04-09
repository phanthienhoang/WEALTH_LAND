@extends('layouts.app')

@section('meta-description')
    Liên hệ tư vấn, hỗ trợ mua bán Bất động sản, đất đai, căn hộ, dự án bất động sản WealthLand
@endsection

@section('main-content')
<main>
    <div class="page-header">
        <h1 class="page-title text-3">Giới thiệu về chúng tôi </h1><span class="page-sub-title"></span>
    </div>
    <article class="container intro-details">
        <p class="intro"></p>
        <div class="title-section">
            {{-- <h2 class="text-3">VỀ CHÚNG TÔI</h2> --}}
        </div>
    </article>
</main>
@endsection

@section('partial-scripts')
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <script src="/js/contact-form.js"></script>
@endsection