
$( document ).ready(function() {
    $.ajax({
      url:"{{route('project.api.call.data')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
  });



  $("#indexAll" ).click(function() {
    $.ajax({
      url:"{{route('project.api.call.data')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });

// ========================== CĂN HỘ =============================================>
  $("#indexApartment" ).click(function() {
    $.ajax({
      url:"{{route('project.api.call.indexApartment')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });


// ========================== ĐẤT NỀN =============================================>
  $("#indexLand" ).click(function() {
    $.ajax({
      url:"{{route('project.api.call.indexLand')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });

  // ========================== BĐS NGHỈ DƯỠNG =============================================>

  $("#indexBDS" ).click(function() {
    $.ajax({
      url:"{{route('project.api.call.indexBDS')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });


  // ========================== NHÀ PHỐ BIỆT THỰ =============================================>

  $("#indexVilla" ).click(function() {
    $.ajax({
      url:"{{route('project.api.call.indexVilla')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });


  // ========================== xOfficetel=============================================>

  $("#indexOfficetel" ).click(function() {
    $.ajax({
      url:"{{route('project.api.call.Officetel')}}",
      method : 'GET',
      dataType : 'json',
      success : function(data){
          $('#call-data-api').empty();
          $.each(data, function(index, value){
              $('#call-data-api').append(
                `
                <div  class="col-12 col-sm-6 col-md-4" >
                <figure class="gallery-figure-room"><img src="{{asset('${value.imgCoverUrl}')}}"/>
                  <div class="title text-medium">
                    <h4>${value.titleVI}</h4>
                    <div class="sub-info"><i class="fa fa-book"></i><span>Quy mô dự án: 18.000 m2</span></div>
                    <div class="sub-info"><i class="fa fa-bookmark-o"></i><span>Diện tích căn hộ: 48m2 - 96m2</span></div>
                  </div><a class="float-title hover-darken ease-out" href="../introduce.html"> Chi tiết</a>
                </figure>
              </div>
                `
              );
          });
      }
    });
  });

}); 