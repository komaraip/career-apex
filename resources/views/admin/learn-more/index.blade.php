@extends('admin.layouts.master')

@section('contents')
    <section class="section">
        <div class="section-header">
            <h1>Learn More Section</h1>
        </div>

        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>Update Learn More Section</h4>

                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.learn-more.update', 1) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <x-image-preview :height="200" :width="300" :source="$learn?->image" />

                                        <label for="">Image</label>
                                        <input type="file" class="form-control {{ hasError($errors, 'image') }}" name="image">
                                        <x-input-error :messages="$errors->get('image')" class="mt-2" />
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="">Title</label>
                                <input type="text" class="form-control {{ hasError($errors, 'title') }}" name="title" value="{{ old('title', $learn?->title) }}">
                                <x-input-error :messages="$errors->get('title')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label for="">Main Title</label>
                                <input type="text" class="form-control {{ hasError($errors, 'main_title') }}" name="main_title" value="{{ old('main_title', $learn?->main_title) }}">
                                <x-input-error :messages="$errors->get('main_title')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label for="">Sub Title</label>
                                <input type="text" class="form-control {{ hasError($errors, 'sub_title') }}" name="sub_title" value="{{ old('sub_title', $learn?->sub_title) }}">
                                <x-input-error :messages="$errors->get('sub_title')" class="mt-2" />
                            </div>
                            <div class="form-group">
                                <label for="">Learn More url</label>
                                <input type="text" class="form-control {{ hasError($errors, 'url') }}" name="url" value="{{ old('url', $learn?->url) }}">
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
