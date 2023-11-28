@if (Session::has('message'))
    <div class="alert alert-success" role="alert">
        {{ Session::get('message') }}
    </div>
@endif

<form action="{{ route('forget.password.post') }}" method="POST">
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
    <div class="col-md-6 offset-md-4">
        <button type="submit" class="btn btn-primary">
            Send Password Reset Link
        </button>
    </div>
</form>
