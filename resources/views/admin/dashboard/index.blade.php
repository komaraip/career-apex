@extends('admin.layouts.master')

@section('contents')
<section class="section">
    <div class="section-header">
      <h1>Dashboard</h1>
    </div>
    @if (canAccess(['dashboard analytics']))
    <div class="row">
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-primary">
            <i class="fas fa-dollar-sign"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Earnings</h4>
            </div>
            <div class="card-body">
             {{ config('settings.site_currency_icon') }} {{ $totalEarnings }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-danger">
            <i class="fas fa-users"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Candidates</h4>
            </div>
            <div class="card-body">
              {{ $totalCandidates }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-warning">
            <i class="fas fa-users"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Companies</h4>
            </div>
            <div class="card-body">
              {{ $totalCompanies }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-success">
            <i class="fas fa-circle"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Jobs</h4>
            </div>
            <div class="card-body">
              {{ $totalJobs }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-info">
            <i class="fas fa-briefcase"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Active Jobs</h4>
            </div>
            <div class="card-body">
              {{ $activeJobs }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-warning">
            <i class="fas fa-briefcase"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Expired Jobs</h4>
            </div>
            <div class="card-body">
              {{ $expiredJobs }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-danger">
            <i class="fas fa-briefcase"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Pending Jobs</h4>
            </div>
            <div class="card-body">
              {{ $pendingJobs }}
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
          <div class="card-icon bg-primary">
            <i class="fab fa-blogger-b"></i>
          </div>
          <div class="card-wrap">
            <div class="card-header">
              <h4>Total Blogs</h4>
            </div>
            <div class="card-body">
              {{ $totalBlogs }}
            </div>
          </div>
        </div>
      </div>
    </div>
    @endif

    @if (canAccess(['dashboard pending posts']))
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4>Pending Jobs</h4>
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
                                <td colspan="7" class="text-center">No result found!</td>
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
    @endif

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
