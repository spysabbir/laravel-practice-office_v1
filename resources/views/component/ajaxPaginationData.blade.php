<table class="table table-bordered">
    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($items as $item)
        <tr>
            <td>{{ $item->title }}</td>
            <td>{{ $item->description }}</td>
        </tr>
        @endforeach
    </tbody>
    </table>


    {!! $items->render() !!}
