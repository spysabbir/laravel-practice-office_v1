<h1>{{ $product->name }}</h1>
<p><strong>Detail:</strong>{{ $product->detail }}</p>
<p><strong>Image:</strong></p>
<img src="{{ asset('images/' . $product->image) }}" alt="{{ $product->name }}" class="img-thumbnail" width="300">
<p>
    <a href="{{ route('product.edit', $product->id) }}" class="btn btn-primary">Edit</a>
    <form action="{{ route('product.destroy', $product->id) }}" method="post" style="display:inline;">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
    </form>
</p>
