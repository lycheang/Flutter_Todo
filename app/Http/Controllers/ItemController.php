<?php

namespace App\Http\Controllers;

use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage as FacadesStorage;
use Illuminate\Support\Str;

class ItemController extends Controller
{
    public function index()
    {
        $items = Item::orderBy('id', 'asc')->paginate(10);
        return view('items.index', compact('items'));
    }

    public function create()
    {
        return view('items.create');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'title' => 'required|max:255',
            'price' => 'required|numeric|min:0',
            'qty' => 'required|integer|min:0',
            'in_stock' => 'required|boolean',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048', //2048 KB = 2MB
        ]);

        if ($request->hasFile('image')) {
            $filename = date('m-d-Y-His') . '.' . $request->file('image')->getClientOriginalExtension();
            $data['image'] = $request->file('image')->storeAs('items', $filename, 'public');
        }

        Item::create($data);
        return redirect()->route('items.index')->with('success', 'Item created!');
    }

    public function show(string $id)
    {
        //
    }

    public function edit(string $id)
    {
        $item = Item::findOrFail($id);
        return view('items.edit', compact('item'));
    }

    public function update(Request $request, string $id)
    {
        $item = Item::findOrFail($id);
        $data = $request->validate([
            'title' => 'required|max:255',
            'price' => 'required|numeric|min:0',
            'qty' => 'required|integer|min:0',
            'in_stock' => 'required|boolean',
            'image' => 'nullable|sometimes|image|mimes:jpg,jpeg,png|max:2048', // Added 'sometimes'
        ]);
        
        if ($request->hasFile('image')) {
            // Delete old image if exists
            if (
                $item->image &&
                $item->image !== 'default.jpeg' && //prevent deleting the default.jpeg
                FacadesStorage::disk('public')->exists($item->image)
            ) {
                FacadesStorage::disk('public')->delete($item->image);
            }
            
            $filename = date('m-d-Y-His') . '.' . $request->file('image')->getClientOriginalExtension();
            $data['image'] = $request->file('image')->storeAs('items', $filename, 'public');
        } else {
            // Keep the existing image if no new image is uploaded
            unset($data['image']);
        }
        
        $item->update($data);
        return redirect()->route('items.index')->with('success', 'Item updated!');
    }

    public function destroy(string $id)
    {
        $item = Item::findOrFail($id);
        if (
            $item->image &&
            $item->image !== 'default.jpeg' && //prevent deleting the default.jpeg
            FacadesStorage::disk('public')->exists($item->image)
        ) {
            FacadesStorage::disk('public')->delete($item->image);
        }
        $item->delete();
        return redirect()->route('items.index')->with('success', 'Item deleted!');
    }
}