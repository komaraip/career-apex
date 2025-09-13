@extends('admin.layouts.master')

@section('contents')
    <section class="section">
        <div class="section-header">
            <h1>Job Locations</h1>
        </div>

        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>All Locations</h4>
                        <div class="card-header-form">
                            
                        </div>
                        <a href="{{ route('admin.job-location.create') }}" class="btn btn-primary"> <i class="fas fa-plus-circle"></i> Create new</a>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th>image</th>
                                    <th>location</th>
                                    <th>status</th>
                                    <th style="width: 10%">Action</th>
                                </tr>
                            <tbody>
                                @forelse ($locations as $location)
                                    <tr>
                                        <td><img src="{{ asset($location->image) }}" style="height: 60px; width=100px; object-fit:cover" alt=""></td>
                                        <td>{{ $location->country->name }}</td>
                                        <td>
                                            <span class="badge badge-primary">{{ $location->status }}</span>
                                        </td>

                                        <td>
                                            <a href="{{ route('admin.job-location.edit', $location->id) }}" class="btn-sm btn btn-primary"><i class="fas fa-edit"></i></a>
                                            <a href="{{ route('admin.job-location.destroy', $location->id) }}" class="btn-sm btn btn-danger delete-item"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="4" class="text-center">No result found!</td>
                                    </tr>
                                @endforelse

                            </tbody>

                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            @if ($locations->hasPages())
                                {{ $locations->withQueryString()->links() }}
                            @endif
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
