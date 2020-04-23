var category = category || {};
var product = product || {};
category.drawTable = function (){
  $.ajax({
    url:"{{route('project.api.call.indexCategoryPro')}}",
    method : 'GET',
    dataType : 'json',
    success : function(data){
        $('#category_product').empty();
        $.each(data, function(index, value){
            $('#category_product').append(
              `
              <li>
                <div><a id="product-all-${value.id}" onclick="product.getData(${value.id})"  href="javascript:;"><i class="fa fa-bookmark-o" aria-hidden="true"></i>${value.category_project_land_name_vi}</a>
                  
                </div>
              </li>

              `
            );
            $('#product-all-1').addClass("active");
        });
    }
  });
}

product.drawTable = function(){
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
};

product.getData=function (id){
  $('[id^="product-all-"]').removeClass("active");
  $('#product-all-'+id).addClass("active");
  $.ajax({
      url:"api/indexCategoryPro/" +id ,
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
}

category.init =function () {
  category.drawTable();
  product.drawTable();
  
};


$(document).ready(function () {
  category.init();
});