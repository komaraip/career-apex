@extends('admin.layouts.master')

@section('contents')
    <section class="section">
        <div class="section-header">
            <h1>Job Posts</h1>
        </div>

        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>All Jobs</h4>
                        <div class="card-header-form">
                            <form action="{{ route('admin.jobs.index') }}" method="GET">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
                                    <div class="input-group-btn">
                                        <button type="submit" style="height: 40px;" class="btn btn-primary"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <a href="{{ route('admin.jobs.create') }}" class="btn btn-primary"> <i class="fas fa-plus-circle"></i> Create new</a>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th>Job</th>
                                    <th>Category/Role</th>
                                    <th>Salary</th>
                                    <th>Deadline</th>
                                    <th>Status</th>
                                    <th>Approve</th>

                                    <th style="width: 10%">Action</th>
                                </tr>
                            <tbody>
                                @forelse ($jobs as $job)
                                    <tr>
                                        <td>
                                            <div class="d-flex">
                                                <div class="mr-2">
                                                    <img style="width:50px;height:50px;object-fit:cover" src="{{ asset($job->company->logo) }}" alt="">
                                                </div>
                                                <div>
                                                    <b>{{ $job->title }}</b>
                                                    <br>
                                                    <span>{{ $job->company->name }} - {{ $job->jobType->name }}</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <div>
                                                <b>{{ $job->category?->name }}</b>
                                                <br>
                                                <span>{{ $job->jobRole->name }}</span>
                                            </div>
                                        </td>
                                        <td>
                                            @if ($job->salary_mode === 'range')
                                                <b>{{ $job->min_salary }} - {{ $job->max_salary }} {{ config('settings.site_default_currency') }}</b>
                                                <br>
                                                <span>{{ $job->salaryType->name }}</span>
                                            @else
                                            <b>{{ $job->custom_salary }}</b>
                                            <br>
                                            <span>{{ $job->salaryType->name }}</span>

                                            @endif
                                        </td>
                                        <td>{{ formatDate($job->deadline) }}</td>
                                        <td>
                                            @if ($job->status === 'pending')
                                            <span class="badge bg-warning text-dark">Peinding</span>
                                            @elseif($job->deadline > date('Y-m-d'))
                                                <span class="badge bg-primary text-dark">Active</span>
                                            @else
                                                <span class="badge bg-danger text-dark">Expired</span>
                                            @endif
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label class="custom-switch mt-2">
                                                  <input @checked($job->status === 'active') type="checkbox" data-id="{{ $job->id }}" name="custom-switch-checkbox" class="custom-switch-input post_status">
                                                  <span class="custom-switch-indicator"></span>
                                                </label>
                                              </div>
                                        </td>
                                        <td>
                                            <a href="{{ route('admin.jobs.edit', $job->id) }}" class="btn-sm btn btn-primary"><i class="fas fa-edit"></i></a>
                                            <a href="{{ route('admin.jobs.destroy', $job->id) }}" class="btn-sm btn btn-danger delete-item"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="3" class="text-center">No result found!</td>
                                    </tr>
                                @endforelse

                            </tbody>

                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            @if ($jobs->hasPages())
                                {{ $jobs->withQueryString()->links() }}
                            @endif
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $('.post_status').on('change', function(){
                let id = $(this).data('id');

                $.ajax({
                    method: 'POST',
                    url: '{{ route("admin.job-status.update", ":id") }}'.replace(":id", id),
                    data: {_token:"{{ csrf_token() }}"},
                    success: function(response) {
                        if(response.message == 'success') {
                            window.location.reload();
                        }
                    },
                    error: function(xhr, status, error) {

                    }
                });
            })
        })
    </script>
@endpush
