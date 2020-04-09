<footer>
    <div class="container-fluid contact">
        <div class="container">
            <div class="title-section">
                <h2 class="text-3">liên hệ với chúng tôi</h2>
            </div>
            <div class="description">Nếu có bất kỳ câu hỏi thắc mắc nào hay muốn tìm hiểu thêm về chúng tôi. Xin hãy liên hệ với chúng tôi để nhận được câu trả lời chính xác và nhanh nhất!</div>
            <a class="btn btn-accent" href="{{ route('contact.index') }}">Liên hệ</a>
        </div>
    </div>
    <div class="container-fluid copyright">
        
    <div class="app-container" style="display: flex; justify-content: space-between; align-items: center; width: 100%">
        <p style="opacity: 0">   người đang truy cập</p> 
        <p>  Copyright 2020 @ WealthLand  </p> <p id="countviews">  </p> 
    </div>
   </div>
</footer>

@push('viewscount')
<script>


  $( document ).ready(function() {
        $.ajax({
            url: "{{route('introduction.countviews.api')}}", 
            success: function(result){
                $("#countviews").html(result +" người đang truy cập") ;
            }});

    });
    setInterval(function(){ 
            
            $.ajax({
            url: "{{route('introduction.countviews.api')}}", 
            success: function(result){
                $("#countviews").html(result + " người đang truy cập") ;
            }});
            
        }, 5000);
</script>
  
@endpush
