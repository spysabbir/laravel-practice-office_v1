<!DOCTYPE html>
<html>
<head>
    <title>Laravel 10 Ajax Pagination Example</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>

<div class="container">

    <h2>Laravel 10 Ajax Pagination Example</h2>

    <div id="item-lists">
        @include('component.ajaxPaginationData')
    </div>

</div>

<script type="text/javascript">

$(window).on('hashchange', function() {
    if (window.location.hash) {
        var page = window.location.hash.replace('#', '');
        if (page == Number.NaN || page <= 0) {
            return false;
        }else{
            getData(page);
        }
    }
});

$(document).ready(function()
{
    $(document).on('click', '.pagination a',function(event)
    {
        $('li').removeClass('active');
        $(this).parent('li').addClass('active');
        event.preventDefault();

        var myurl = $(this).attr('href');
        var page=$(this).attr('href').split('page=')[1];

        getData(page);
    });
});

function getData(page){
    $.ajax({
        url: '?page=' + page,
        type: "get",
        datatype: "html",
    })
    .done(function(data){
        $("#item-lists").empty().html(data);
        location.hash = page;
    })
    .fail(function(jqXHR, ajaxOptions, thrownError){
          alert('No response from server');
    });
}

</script>

</body>
</html>
