@if (Session::has('message'))
    <div class="alert alert-success" role="alert">
        {{ Session::get('message') }}
    </div>
@endif

<form action="{{ route('login.post') }}" method="POST">
    @csrf
    <div class="form-group row">
        <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
        <div class="col-md-6">
            <input type="text" id="email_address" class="form-control" name="email">
            @error('email')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>

    <div class="form-group row">
        <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>
        <div class="col-md-6">
            <input type="password" id="password" class="form-control" name="password">
            @error('password')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>

    <div class="form-check">
        <input class="form-check-input" type="checkbox" name="remember" id="remember">
        <label class="form-check-label" for="remember">
            Remember me
        </label>
    </div>

    <div class="col-md-6 offset-md-4">
        <button type="submit" class="btn btn-primary">
            Login
        </button>
    </div>
</form>

<div class="form-group row">
    <div class="col-md-6 offset-md-4">
        <div class="checkbox">
            <label>
                <a href="{{ route('forget.password.get') }}">Reset Password</a>
            </label>
        </div>
    </div>
</div>
