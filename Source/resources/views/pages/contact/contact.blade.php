@extends('layouts.app')

@section('main-content')
<main>
    <div class="page-header">
        <h2 class="page-title text-3">Liên hệ</h2><span class="page-sub-title">Chúng tôi luôn sẵn sàng chào đón các bạn!</span>
    </div>
    <article class="container intro-details">
        <p class="intro"></p>
        <div class="intro-row">
            <div class="media-container"><img data-original="/assets/images/1_2.jpg" /></div>
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
                </div>
            </div>
            <div class="intro-row reverse">
                <div class="media-container">
                    <form class="contact-form">
                        <input type="text" placeholder="Vui lòng nhập họ tên" />
                        <input type="text" placeholder="Số điện thoại" />
                        <input type="text" placeholder="Email" />
                        <textarea type="text" placeholder="Viết bình luận" rows="6"></textarea>
                        <button class="btn btn-accent">Liên hệ</button>
                    </form>
                </div>
            </div>
            <div class="text-description"></div>
        </div>
    </article>
</main>
@endsection