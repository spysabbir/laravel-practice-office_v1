@foreach ($posts as $post)
<div class="card mb-2">
    <div class="card-body">{{ $post->id }}
        <h5 class="card-title">{{ $post->title }}</h5>
        {!! $post->body !!}
    </div>
</div>
@endforeach
