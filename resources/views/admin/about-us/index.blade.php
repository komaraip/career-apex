@extends('admin.layouts.master')

@section('contents')
    <section class="section">
        <div class="section-header">
            <h1>About Us</h1>
        </div>

        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Update About us</h4>

                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.about-us.update', 1) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <x-image-preview :height="200" :width="300" :source="$about?->image" />

                                        <label for="">Image</label>
                                        <input type="file" class="form-control {{ hasError($errors, 'image') }}" name="image">
                                        <x-input-error :messages="$errors->get('image')" class="mt-2" />
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="">Title</label>
                                <input type="text" class="form-control {{ hasError($errors, 'title') }}" name="title" value="{{ old('title', $about?->title) }}">
                                <x-input-error :messages="$errors->get('title')" class="mt-2" />
                            </div>

                            <div class="form-group">
                                <label for="">Description</label>
                                <textarea id="editor" name="description" class="{{ hasError($errors, 'description') }}">{!! $about?->description !!}</textarea>
                                <x-input-error :messages="$errors->get('description')" class="mt-2" />
                            </div>


                            <div class="form-group">
                                <label for="">Url</label>
                                <input type="text" class="form-control {{ hasError($errors, 'url') }}" name="url" value="{{ old('url', $about?->url) }}">
                                <x-input-error :messages="$errors->get('url')" class="mt-2" />
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
