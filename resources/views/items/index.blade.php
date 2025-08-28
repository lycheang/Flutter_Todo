@extends('layouts.app')
@section('title', 'បញ្ជីសំភារៈ')
@section('content')
  <a href="{{ route('items.create') }}" class="btn btn-primary">Add New</a>
  <table border="1px" class="table table-hover">
    <thead class="table table-primary">
      <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Price</th>
        <th>Qty</th>
        <th>In Stock</th>
        <th>Image</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody class="table">
      @foreach ($items as $element)
        <tr>
          <td>{{ $element->id }}</td>
          <td>{{ $element->title }}</td>
          <td>{{ $element->price }}</td>
          <td>{{ $element->qty }}</td>
          <td>{{ $element->in_stock ? 'Yes' : 'No' }}</td>
          <td><img width="80" src="{{ asset('storage/' . $element->image) }}" alt=""></td>
          <td><a href="{{ route('items.edit', $element->id) }}" class="btn btn-sm btn-primary">Edit</a>
            <form id="delete-form-{{ $element->id }}" action="{{ route('items.destroy', $element->id) }}" method="POST"
              style="display:inline;">
              @csrf @method('DELETE')
              <button type="button" class="btn btn-sm btn-danger"
                onclick="confirmDelete({{ $element->id }});">Delete</button>
            </form>
        </tr>
      @endforeach
    </tbody>
  </table>
  {{ $items->links('pagination::bootstrap-5') }}
  </div>
@endsection
