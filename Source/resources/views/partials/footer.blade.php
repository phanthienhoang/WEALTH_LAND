<footer>
    <div class="container-fluid contact">
        <div class="container">
            <div class="title-section">
                <h2 class="text-3">{{ trans('navbar.lienhevoichungtoi') }}</h2>
            </div>
            <div class="description">{{ trans('navbar.motalienhe') }}</div>
            <a class="btn btn-accent" href="{{ route('contact.index') }}">{{ trans('navbar.lienhe') }}</a>
        </div>
    </div>
    <div class="container-fluid copyright">
        
    <div class="app-container" style="display: flex; justify-content: space-between; align-items: center; width: 100%">
        <div style="display: flex; align-items: center; width: 5rem">Lang: 
            <a href="{{ route('user.change-language',['vi'])}}">
                <img style="width: 30px; margin-left: 5px" src="/assets/icons/vietnam.svg"/>
            </a>
            <a href="{{ route('user.change-language',['en'])}}">
                <img style="width: 30px; margin-left: 5px" src="/assets/icons/united-states.svg"/>
            </a>
        </div> 
        <p>  Copyright 2020 @ WealthLand  </p> <p style="width: 5rem"><span id="countviews"> </span> {{ trans('navbar.nguoitruycap') }}</p> 
    </div>
   </div>
</footer>

@push('viewscount')
<script>

    $( document ).ready(function() {
        $.ajax({
            url: "{{route('introduction.countviews.api')}}", 
            success: function(result){
                $("#countviews").html(result);
            }});

    }); 
    setInterval(function(){ 
        $.ajax({
        url: "{{route('introduction.countviews.api')}}", 
        success: function(result){
            $("#countviews").html(result);
        }});
            
    }, 5000);
</script>
  
@endpush
