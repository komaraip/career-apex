@extends('admin.layouts.master')

@section('contents')
    <section class="section">
        <div class="section-header">
            <h1>Location Section</h1>
        </div>

        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Update Location</h4>

                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.job-location.update', $location->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="col-md-5">
                                    <x-image-preview :height="200" :width="300" :source="$location->image" class="mt-2" />

                                    <div class="form-group">
                                        <label for="">Image</label>
                                        <input type="file" class="form-control {{ hasError($errors, 'image') }}" name="image">
                                        <x-input-error :messages="$errors->get('image')" class="mt-2" />
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="">Country</label>
                                <select name="country" id="" class="form-control select2 {{ hasError($errors, 'country') }}">
                                    <option value="">choose</option>
                                    @foreach ($countries as $country)
                                    <option @selected($country->id === $location->country_id) value="{{ $country->id }}">{{ $country->name }}</option>
                                    @endforeach
                                </select>
                                <x-input-error :messages="$errors->get('country')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label for="">Status</label>
                                <select name="status" id="" class="form-control {{ hasError($errors, 'status') }}" >
                                    <option value="">choose</option>
                                    <option @selected($location->status == 'featured') value="featured">Featured</option>
                                    <option @selected($location->status == 'trending') value="trending">Treding</option>
                                    <option @selected($location->status == 'hot') value="hot">HOT</option>
                                </select>
                                <x-input-error :messages="$errors->get('status')" class="mt-2" />
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
