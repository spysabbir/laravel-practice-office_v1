<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Laravel AJAX Dependent Country State City Dropdown Example</title>

     <!-- CSS only -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="alert alert-primary mb-4 text-center">
                    <h4 >Laravel AJAX Dependent Country State City Dropdown Example</h4>
                </div>

                <form action="" method="POST">
                    <div class="form-group mb-3">
                        <select id="country-dropdown" class="form-control">
                            <option value="">-- Select Country --</option>
                            @foreach ($countries as $data)
                            <option value="{{$data->id}}">
                                {{$data->name}}
                            </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group mb-3">
                        <select id="state-dropdown" class="form-control">
                            <option value="">-- Select Country First --</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select id="city-dropdown" class="form-control">
                            <option value="">-- Select State First --</option>
                        </select>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $(document).ready(function(){

            // Get State
            $('#country-dropdown').on('change', function () {
                var idCountry = this.value;
                $('#state-dropdown').html('');
                $.ajax({
                    url: "{{url('api/fetch-states')}}",
                    type: "POST",
                    data: {
                            country_id: idCountry,
                            _token: '{{csrf_token()}}'
                        },
                    dataType: "json",
                    success: function (response) {
                        $('#state-dropdown').html('<option value="">-- Select State --</option>');
                        $.each(response, function (key, value) {
                            $("#state-dropdown").append('<option value="' + value
                                .id + '">' + value.name + '</option>');
                        });
                    }
                });
            });

            // Get City
            $('#state-dropdown').on('change', function () {
                var idState = this.value;
                $("#city-dropdown").html('');
                $.ajax({
                    url: "{{url('api/fetch-cities')}}",
                    type: "POST",
                    data: {
                        state_id: idState,
                        _token: '{{csrf_token()}}'
                    },
                    dataType: 'json',
                    success: function (response) {
                        $('#city-dropdown').html('<option value="">-- Select City --</option>');
                        $.each(response, function (key, value) {
                            $("#city-dropdown").append('<option value="' + value
                                .id + '">' + value.name + '</option>');
                        });
                    }
                });
            });

        })
    </script>
</body>
</html>
