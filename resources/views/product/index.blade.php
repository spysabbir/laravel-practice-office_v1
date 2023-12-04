
<h1>Products</h1>
<a href="{{ route('product.create') }}" class="btn btn-success">Create Product</a>
<table class="table">
    <thead>
        <tr>
            <th>Name</th>
            <th>Detail</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($products as $product)
            <tr>
                <td>{{ $product->name }}</td>
                <td>{{ $product->detail }}</td>
                <td>
                    <img src="{{ asset('images/' . $product->image) }}" alt="{{ $product->name }}" class="img-thumbnail" width="50">
                </td>
                <td>
                    <a href="{{ route('product.edit', $product->id) }}" class="btn btn-primary">Edit</a>
                    <a href="{{ route('product.show', $product->id) }}" class="btn btn-info">View</a>
                    <form action="{{ route('product.destroy', $product->id) }}" method="post" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

{{ $products->links() }}
