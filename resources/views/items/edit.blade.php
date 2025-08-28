@extends('layouts.app')
@section('title', 'កែប្រែសំភារៈ')
@section('content')
  <form action="{{ route('items.update', $item->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <input type="text" name="title" value="{{ $item->title }}" class="form-control mb-2" placeholder="Enter Title"
      required>
    <input type="number" name="price" value="{{ $item->price }}" class="form-control mb-2" placeholder="Enter Price"
      step="0.1" required>
    <input type="number" name="qty" value="{{ $item->qty }}" class="form-control mb-2"
      placeholder="Enter Quantity" required>
    <div class="form-check mb-2">
      <div class="mb-3">
        <div class="form-check">
          <input class="form-check-input" id="option1" type="radio" name="in_stock" value="1"
            @checked($item->in_stock == 1)>
          <label class="form-check-label" for="option1">In Stock</label>
        </div>
        <div class="form-check">
          <input class="form-check-input" id="option2" type="radio" name="in_stock" value="0"
            @checked($item->in_stock == 0)>
          <label class="form-check-label" for="option2">No Stock</label>
        </div>
      </div>
    </div>

    @if ($item->image)
      <div class="mb-2">
        <label>Current Image:</label><br><img src="{{ asset('storage/' . $item->image) }}" width="200">
      </div>
    @else
      No Image
    @endif
    <div class="mb-3"> <label>Upload New Image:</label> <input type="file" name="image" class="form-control">
    </div>
    <button class="btn btn-success">Update Product</button>
  </form>
@endsection
