@extends('layouts.app')

@section('main-content')
<main>
    <div class="page-header" style="background: url(/{{ $land->imgCoverUrl }}) no-repeat center bottom; background-size: cover">
        <h2 class="page-title text-3">{{ $land->title }}</h2>
    </div>
    <article class="container intro-details">
        <section class="project-details app-container">
            <div class="title-section has-margin">
                <h2 class="text-3">Thông tin chi tiết</h2>
            </div>
            <div class="detail-container">
                <div class="detail-figure"><img data-original="/assets/icons/icon_calendar.png" />
                    <div class="icon-label">Xây dựng</div>
                    <div class="info">Năm {{ $land->iBuiltYear }}</div>
                </div>
                <div class="detail-figure"><img data-original="/assets/icons/icon_dimension.png" />
                    <div class="icon-label">diện tích</div>
                    <div class="info">{{ $land->iArea }} m2</div>
                </div>
                <div class="detail-figure"><img data-original="/assets/icons/icon_parking.png" />
                    <div class="icon-label">bãi gửi xe</div>
                    <div class="info">{{ $land->iParking}}</div>
                </div>
                <div class="detail-figure"><img data-original="/assets/icons/icon_bed.png" />
                    <div class="icon-label">phòng ngủ</div>
                    <div class="info">{{ $land->iBedroom }}</div>
                </div>
                <div class="detail-figure"><img data-original="/assets/icons/icon_bath.png" />
                    <div class="icon-label">PHÒNG tắm</div>
                    <div class="info">{{ $land->iBathroom }}</div>
                </div>
            </div>
        </section>

        <p class="intro"><b>Trang giới thiệu</b> giúp khách hàng hiểu rõ hơn về cửa hàng của bạn. Hãy cung cấp thông tin cụ thể về việc kinh doanh, về cửa hàng, thông tin liên hệ. Điều này sẽ giúp khách hàng cảm thấy tin tưởng khi mua hàng trên website của bạn.</p>
        <div class="intro-row">
            <div class="media-container"><img data-original="/assets/images/sp8_master.jpg" /></div>
            <div class="text-description">
                <h3 class="title text-3 text-medium">MÔ TẢ CĂN HỘ:</h3>
                <p class="content text-medium-light">Phòng khách chính là nơi để đón tiếp những vị khách quý hay bạn bè của gia chủ cho nên đây cũng có thể được coi là bộ mặt chính của mỗi căn hộ.Chúng ta có thể dễ dàng nhận thấy đặc điểm chung của nội thất phòng khách hiện đại đó là việc sử dụng những mẫu Ghế sofa đẹp đi kèm với một chiếc bàn kính hiện đại đặt trước tivi và Kệ tivi đẹp.</p>
                <h3 class="title text-3 text-medium">THÔNG TIN CHI TIẾT:</h3>
                <ul class="text-medium-light">
                    <li>Gạch lát sàn bằng gỗ tự nhiên</li>
                    <li>Có cửa kính trong phòng tắm</li>
                    <li>Thiết bị tiện nghi và chất lượng</li>
                </ul>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="intro-row reverse">
            <div class="media-container"><img data-original="/assets/images/sp9_master.jpg" /></div>
            <div class="text-description">
                <h3 class="title text-3 text-medium">GIỚI THIỆU CĂN HỘ</h3>
                <p class="content text-medium-light">Phòng khách chính là nơi để đón tiếp những vị khách quý hay bạn bè của gia chủ cho nên đây cũng có thể được coi là bộ mặt chính của mỗi căn hộ.Chúng ta có thể dễ dàng nhận thấy đặc điểm chung của nội thất phòng khách hiện đại đó là việc sử dụng những mẫu Ghế sofa đẹp đi kèm với một chiếc bàn kính hiện đại đặt trước tivi và Kệ tivi đẹp.</p>
                <p class="content text-medium-light">Bên cạnh đó, Qúy khách còn được tận hưởng những dịch vụ thư giãn: phòng xông hơi, xông khô, phòng tập thể dục đầy đủ dụng cụ, công viên, khu vui chơi trẻ em.</p>
            </div>
        </div>
    </article>
</main>
@endsection