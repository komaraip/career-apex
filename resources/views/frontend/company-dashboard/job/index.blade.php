@extends('frontend.layouts.master')

@section('contents')
<section class="section-box mt-75">
    <div class="breacrumb-cover">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <h2 class="mb-20">Orders</h2>
                    <ul class="breadcrumbs">
                        <li><a class="home-icon" href="index.html">Home</a></li>
                        <li>Orders</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section-box mt-120">
    <div class="container">
        <div class="row">
            @include('frontend.company-dashboard.sidebar')
            <div class="col-lg-9 col-md-8 col-sm-12 col-12 mb-50">
                <div class="card">
                    <div class="card-header">
                        <h4>All Jobs</h4>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="card-header-form">
                                    <form action="{{ route('company.jobs.index') }}" method="GET">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
                                            <div class="input-group-btn">
                                                <button type="submit" style="height: 50px;" class="btn btn-primary"><i class="fas fa-search"></i></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-3 text-center">
                                <a href="{{ route('company.jobs.create') }}" class="btn btn-primary"> <i class="fas fa-plus-circle"></i> Create new</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th style="width: 270px">Job</th>
                                    <th>Category/Role</th>
                                    <th>Applications</th>
                                    <th>Deadline</th>
                                    <th>Status</th>
                                    <th style="width: 10%">Action</th>
                                </tr>
                            <tbody>
                                @forelse ($jobs as $job)
                                    <tr>
                                        <td>
                                            <div class="d-flex">

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
                                            {{ $job->applications_count }} Applications
                                        </td>
                                        <td>{{ formatDate($job->deadline) }}</td>
                                        <td>
                                            @if ($job->status === 'pending')
                                                <span class="badge bg-warning">Peinding</span>
                                            @elseif ($job->deadline > date('Y-m-d'))
                                                <span class="badge bg-success ">Active</span>
                                            @else
                                                <span class="badge bg-danger ">Expired</span>
                                            @endif
                                        </td>

                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="fas fa-cog"></i>
                                                </button>
                                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                  <li><a class="dropdown-item" href="{{ route('company.job.applications', $job->id) }}">Applications</a></li>
                                                  <li><a class="dropdown-item" href="{{ route('company.jobs.edit', $job->id) }}">Edit</a></li>
                                                  <li><a class="dropdown-item delete-item" href="{{ route('company.jobs.destroy', $job->id) }}">Delete</a></li>
                                                </ul>
                                              </div>

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

                    <div class="paginations">
                        <ul class="pager">
                            @if ($jobs->hasPages())
                                {{ $jobs->withQueryString()->links() }}
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
