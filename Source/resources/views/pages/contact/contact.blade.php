@extends('layouts.app')

@section('meta-description')
    Liên hệ tư vấn, hỗ trợ mua bán Bất động sản, đất đai, căn hộ, dự án bất động sản WealthLand
@endsection

@section('main-content')
<main>
    <div class="page-header">
        <h1 class="page-title text-3">Liên hệ tư vấn</h1><span class="page-sub-title">Chúng tôi luôn sẵn sàng hỗ trợ quý khách hàng!</span>
    </div>
    <article class="container intro-details">
        <p class="intro"></p>
        <div class="intro-row">
<<<<<<< HEAD
            <div class="media-container"><img alt="Văn phòng Tập đoàn bất động sản WealthLand" data-original="/assets/images/card-visit.jpg" /></div>
            <div class="text-description">
                <div class="title-section">
                    <h2 class="text-3">Wealth Land</h2>
                </div>
                <div class="text-4 officer-title text-medium">Văn phòng Công ty WealthLand Vietnam</div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-map-marker"></i></div>
                    <p class="content">Tầng 4, Toà nhà VietinBank, 02 Lê Quý Đôn, TP Huế</p>
                </div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-phone"></i></div>
                    <p class="content">0977 175 923</p>
                </div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-envelope-o"></i></div>
                    <p class="content">wealthland@gmail.com</p>
                </div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-search"></i></div>
                    <p class="content">www.wealthland.vn</p>
=======
            <div class="media-container"><img alt="Văn phòng Tập đoàn bất động sản WealthLand" data-original="/assets/images/1_2.jpg" /></div>
            <div class="text-description">
                <div class="title-section">
                    <h2 class="text-3">BABYLON RESIDENCE</h2>
                </div>
                <div class="text-4 officer-title text-medium">Văn phòng tập đoàn Babylon</div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-map-marker"></i></div>
                    <p class="content">Số 7 đường Bằng Lăng 1, KĐT sinh thái Vinhomes Riverside, P. Việt Hưng, Q. Long Biên, Hà Nội, Việt Nam</p>
                </div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-phone"></i></div>
                    <p class="content">024 3974 9999</p>
                </div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-envelope-o"></i></div>
                    <p class="content">salesvillas@vingroup.net</p>
                </div>
                <div class="office-detail">
                    <div class="icon"> <i class="fa fa-search"></i></div>
                    <p class="content">https://vinpearlvillas.com</p>
>>>>>>> feature/statistical-count-views
                </div>
            </div>
            <div class="intro-row reverse">
                <div class="media-container">
                    <form class="contact-form" id="contact-form" @submit.prevent="postComment" action="/api/contact">
                        <input type="text" v-model="form.fullname" placeholder="Vui lòng nhập họ tên" />
                        <input type="text" v-model="form.phone" placeholder="Số điện thoại" />
                        <input type="text" v-model="form.email" placeholder="Email" />
                        <textarea type="text" v-model="form.comment" placeholder="Viết bình luận" rows="6"></textarea>
                        <button class="btn btn-accent" v-bind:disabled="requesting">
                            <span v-if="!requesting">Gửi bình luận </span>
                            <span v-if="requesting">Đang yêu cầu ... </span>
                        </button>
                    </form>
                </div>
            </div>
            <div class="text-description"></div>
        </div>
    </article>
</main>
@endsection

@section('partial-scripts')
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <script src="/js/contact-form.js"></script>
@endsection