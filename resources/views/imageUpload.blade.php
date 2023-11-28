@if ($message = Session::get('success'))
<div class="alert alert-success alert-block">
    <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>{{ $message }}</strong>
</div>
<img src="images/{{ Session::get('image') }}">
@endif

<form action="{{ route('image.store') }}" method="POST" enctype="multipart/form-data">
    @csrf

    <div class="mb-3">
        <label class="form-label" for="inputImage">Image:</label>
        <input
            type="file"
            name="image"
            id="inputImage"
            class="form-control @error('image') is-invalid @enderror">

        @error('image')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>

    <div class="mb-3">
        <button type="submit" class="btn btn-success">Upload</button>
    </div>

</form>
