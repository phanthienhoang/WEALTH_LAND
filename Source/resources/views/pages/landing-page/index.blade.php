@extends('layouts.app')

@section('main-content')
<main class="index-page">
    <div class="carousel-container">
        <div class="carousel-widget app-container">
            <div class="project-description">
                <h2 class="feature text-2">BABYLON RESIDENCE</h2><span class="feature-description">458 Minh Khai, Hai Bà Trưng - Hà Nội</span><span class="feature-description">Giá chỉ từ 4 tỷ</span>
                <button class="btn btn-accent">Xem chi tiết</button>
            </div>
            <form id="contact-form" @submit.prevent="postComment" action="/api/contact">
                <input type="text" v-model="form.fullname" placeholder="Vui lòng nhập họ tên" />
                <input type="text" v-model="form.phone" placeholder="Số điện thoại" />
                <input type="text" v-model="form.email" placeholder="Email" />
                <textarea v-model="form.comment" placeholder="Viết bình luận" rows="4"></textarea>
                <button class="btn btn-accent">Đăng ký tư vấn</button>
            </form>
        </div>
    </div>
    {{-- <section class="project-details app-container">
        <div class="title-section has-margin">
            <h2 class="text-3">Thông tin chi tiết</h2>
        </div>
        <div class="detail-container">
            <div class="detail-figure"><img data-original="/assets/icons/icon_calendar.png" />
                <div class="icon-label">Xây dựng</div>
                <div class="info">Năm 2018</div>
            </div>
            <div class="detail-figure"><img data-original="/assets/icons/icon_dimension.png" />
                <div class="icon-label">diện tích</div>
                <div class="info">50,75 - 83,12 M2</div>
            </div>
            <div class="detail-figure"><img data-original="/assets/icons/icon_parking.png" />
                <div class="icon-label">bãi gửi xe</div>
                <div class="info">2</div>
            </div>
            <div class="detail-figure"><img data-original="/assets/icons/icon_bed.png" />
                <div class="icon-label">phòng ngủ</div>
                <div class="info">2</div>
            </div>
            <div class="detail-figure"><img data-original="/assets/icons/icon_bath.png" />
                <div class="icon-label">PHÒNG tắm</div>
                <div class="info">2</div>
            </div>
        </div>
    </section> --}}
    {{-- <section class="overview">
        <div class="row">
            <div class="col-md-6"></div>
            <div class="col-12 col-md-6">
                <div class="text__container">
                    <div class="title-section">
                        <h2 class="text-3">Cơ sở hạ tầng</h2>
                    </div>
                    <p class="description">Khu căn hộ Babylon Residence được đầu tư bởi Tập đoàn Đất Xanh, hiện dự án Babylon Residence đang hoàn thiện nhà điều hành, nhà mẫu và công viên ven sông. Dự kiến dự án sẽ được công bố vào tháng 5/2016 và hoàn thành vào đầu năm 2018.</p>
                    <div class="more-description">
                        <div class="widget">
                            <div class="title">TẦM NHÌN</div>
                            <p class="content">Với vị trí của căn hộ quý khách sẽ cảm thấy sảng khoái và vui vẻ với quang cảnh từ căn hộ của mình vào..</p>
                        </div>
                        <div class="widget">
                            <div class="title">SÂN CHƠI</div>
                            <p class="content">Phải mất công tìm kiếm một nơi để hoạt động thể thao đủ lớn và tiện nghi ,nay với việc sở hữu căn hộ của…</p>
                        </div>
                        <div class="widget">
                            <div class="title">SÂN CHƠI</div>
                            <p class="content">Phải mất công tìm kiếm một nơi để hoạt động thể thao đủ lớn và tiện nghi ,nay với việc sở hữu căn hộ của…</p>
                        </div>
                        <div class="widget">
                            <div class="title">SÂN CHƠI</div>
                            <p class="content">Phải mất công tìm kiếm một nơi để hoạt động thể thao đủ lớn và tiện nghi ,nay với việc sở hữu căn hộ của…</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <section class="gallery-room app-container">
        <div class="title-section">
            <h2 class="text-3">Dự án nổi bật</h2>
        </div>
        <div class="row">
            @foreach($hotestProjects as $project)
            <div class="col-12 col-sm-6 col-md-4">
                <figure class="gallery-figure-room">
                    <div class="image__wrapper"><img data-original="{{ $project->imgCoverUrl }}" /></div>
                    <div class="title text-medium"><span>{{ $project->title}}</span></div><a class="float-title hover-darken ease-out" href="{{ route('project.single', $project->seoAlias) }}"> Chi tiết</a>
                </figure>
            </div>
            @endforeach
        </div>
    </section>
    <div class="bg-light">
        <section class="gallery-room app-container">
            <div class="title-section has-margin">
                <h2 class="text-3">Bất động sản nổi bật</h2>
            </div>
            <div class="row">
                @foreach($hotestLands as $land)
                <div class="col-12 col-md-6 col-xl-4">
                <a class="land-figure" href="{{ route('land.single', $land->seoAlias) }}"><figure class="land-figure-link"><img data-original="{{ $land->imgCoverUrl}}"/>
                        <div class="land-details-nail">
                          <div class="land-detail-info">
                            <div class="icon"><i class="fa fa-home" aria-hidden="true"></i></div>
                          <p>{{ $land->iArea }}m2</p>
                          </div>
                          <div class="land-detail-info">
                            <div class="icon end"><i class="fa fa-bed" aria-hidden="true"></i></div>
                            <p>{{ $land->iBedroom}}</p>
                          </div>
                          <div class="land-detail-info">
                            <div class="icon top"><i class="fa fa-bath" aria-hidden="true"></i></div>
                            <p>{{ $land->iBathroom}}</p>
                          </div>
                          <div class="land-detail-info">
                            <div class="icon smaller"><i class="fa fa-calendar-plus-o" aria-hidden="true"></i></div>
                            <p>{{ $land->iBuiltYear }}</p>
                          </div>
                        </div>
                        <div class="land-price">{{ $land->iPrice}}T</div></figure></a>
                  </div>
                @endforeach
            </div>
        </section>
    </div>
    <section class="news-figure-list app-container">
        <div class="title-section">
            <h2 class="text-3">Tin tức</h2>
        </div>
        <div class="row">
            @foreach($lastestNews as $news)
        <div class="col-12 col-sm-6 col-md-4"><a class="news-figure-vertical" href="{{ route('news.single',  $news->slug )}}">
                    <div class="image__wrapper"><img data-original="/assets/images/5-yeu-to-tao-nen-co-hoi-dau-tu-thong-minh-tai-flc-luxury-hotel-sam-son-257-8643.jpg" />
                        <div class="date-tag bg-accent"><span class="date">{{ date("d", strtotime($news->created_at)) }}</span><span class="month">Th{{ (int)date("m", strtotime($news->created_at)) }}</span></div>
                    </div>
                    <div class="main-title-wrapper">
                        <div class="main-title text-medium">{{ $news->title }}</div>
                    </div>
                    <div class="split-line">
                        <div></div>
                    </div>
                    <div class="short-description text-medium">
                        {{ $news->created_at }}
                    </div>
                </a></div>
                @endforeach
        </div>
    </section>
</main>
@endsection

@section('partial-scripts')
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

    <script src="/js/contact-form.js"></script>
@endsection