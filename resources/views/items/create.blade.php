@extends('layouts.app')
@section('title', 'បន្ថែមសំភារៈ')
@section('content')

  <form action="{{ route('items.store') }}" method="POST" enctype="multipart/form-data">
    @csrf

    <input type="text" name="title" class="form-control mb-2" placeholder="Enter Title" required>
    <input type="number" name="price" class="form-control mb-2" placeholder="Enter Price" step="0.1" required>
    <input type="number" name="qty" class="form-control mb-2" placeholder="Enter Quantity" required>
    <div class="mb-3">
      <div class="form-check">
        <input class="form-check-input" id="option1" type="radio" name="in_stock" value="1" checked>
        <label class="form-check-label" for="option1">In Stock</label>
      </div>
      <div class="form-check">
        <input class="form-check-input" id="option2" type="radio" name="in_stock" value="0" checked>
        <label class="form-check-label" for="option2">No Stock</label>
      </div>
      <input type="file" name="image" class="form-control mb-3" required>
      <button class="btn btn-primary">Save Product</button>
    </div>
  </form>

@endsection
