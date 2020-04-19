@extends('layouts.app')

@section('meta-description')
    Liên hệ tư vấn, hỗ trợ mua bán Bất động sản, đất đai, căn hộ, dự án bất động sản WealthLand
@endsection

@section('main-content')
<main id="introduction-tabs">
    <div class="page-header">
        <h1 class="page-title text-3">Giới Thiệu</h1><span class="page-sub-title"></span>
    </div>

    <section  class="control-tabs container app-container p-0">
        <div class="row" style="width: 100%" id="introduction-tab-api">
            {{-- <div class="col-12 col-md-4" v-for="intro in list">
                <button onclick=""  class="btn btn-outline">${value.title}</button>
            </div> --}}
        </div>

    </section>

    <article class="app-container intro-details">
        <div id="call-data-introduct-api">

        </div>
    </article>
</main>
@endsection

@section('partial-scripts')
    <script>



var introduction = introduction || {} ; 

introduction.drawIntroduction = function (){
  $.ajax({
    url:"{{route('introduction.list.api')}}",
    method : 'GET',
    dataType : 'json',
    success : function(data){
        $('#introduction-tab-api').empty();
        var url = window.location.search;
        // alert(url);
        $.each(data, function(index, value){
            $('#introduction-tab-api').append(
              `
                <div  class="col-12 col-md-4" v-for="intro in list">
                    <button id="introduct-all-${value.id}" onclick="introduction.getData(${value.id})" class="btn btn-outline">${value.title}</button>
                </div>
              `
            );
        });
            if(url =='?tab=gioi-thieu-chung'){
                $('#introduct-all-1').addClass("active");
                introduction.getData(1);
            }
            if(url =='?tab=gioi-thieu-nang-luc'){
                $('#introduct-all-2').addClass("active");
                introduction.getData(2);

            }
            if(url =='?tab=dinh-huong-phat-trien'){
                $('#introduct-all-3').addClass("active");
                introduction.getData(3);

            }
        }
    });
}


   


introduction.getData=function (id){
  $('[id^="introduct-all-"]').removeClass("active");
  $('#introduct-all-'+id).addClass("active");
  $.ajax({
      url:"/api/introduct/" +id ,
      method : 'GET',
      dataType : 'json',
      success : function(data){
        $('#call-data-introduct-api').empty();
        $('#call-data-introduct-api').append(
            data.content
        );
      }
  });
}


introduction.init =function () {
    introduction.drawIntroduction();
};



        
$( document ).ready(function() {

    introduction.init();
});


    </script>
@endsection