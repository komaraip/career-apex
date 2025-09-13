@extends('frontend.layouts.master')

@section('contents')
    <section class="section-box mt-75">
        <div class="breacrumb-cover">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-12">
                        <h2 class="mb-20">Bookmarks</h2>
                        <ul class="breadcrumbs">
                            <li><a class="home-icon" href="index.html">Home</a></li>
                            <li>Bookmarks</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-box mt-120">
        <div class="container">
            <div class="row">
                @include('frontend.candidate-dashboard.sidebar')
                <div class="col-lg-9 col-md-8 col-sm-12 col-12 mb-50">
                    <div class="mb-3">
                        <h4>Bookmarks</h4>

                    </div>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Job</th>
                                <th>Salary</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th style="width: 15%">Action</th>
                            </tr>
                        </thead>
                        <tbody class="experience-tbody">
                            @forelse ($bookmarks as $bookmark)
                                <tr>
                                    <td>
                                        <div class="d-flex ">
                                            <img style="width: 50px; height: 50px; object-fit:cover;"
                                                src="{{ asset($bookmark->job->company->logo) }}" alt="">
                                            <div style="padding-left: 15px">
                                                <h6>{{ $bookmark->job->title }}</h6>
                                                <b>{{ $bookmark->job?->company?->companyCountry->name }}</b>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        @if ($bookmark->job->salary_mode === 'range')
                                            {{ $bookmark->job->min_salary }} - {{ $bookmark->job->max_salary }}
                                            {{ config('settings.site_default_currency') }}
                                        @else
                                            {{ $bookmark->job->custom_salary }}
                                        @endif
                                    </td>
                                    <td>{{ formatDate($bookmark->created_at) }}</td>
                                    <td>
                                        @if($bookmark->job->deadline < date('Y-m-d'))
                                            <span class="badge bg-danger">Expired</span>
                                        @else
                                        <span class="badge bg-success">Active</span>

                                        @endif
                                    </td>
                                    <td>
                                        @if($bookmark->job->deadline < date('Y-m-d'))
                                        <a href="javascript:;"
                                            class="btn-sm btn btn-secondary" ><i class="fas fa-eye"
                                                aria-hidden="true"></i></a>
                                    @else
                                    <a href="{{ route('jobs.show', $bookmark->job->slug) }}"
                                        class="btn-sm btn btn-primary" ><i class="fas fa-eye"
                                            aria-hidden="true"></i></a>

                                    @endif

                                    </td>

                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="text-center">No data found!</td>
                                </tr>
                            @endforelse


                        </tbody>
                    </table>

                </div>


                <div class="paginations">
                    <ul class="pager">
                        @if ($bookmarks->hasPages())
                            {{ $bookmarks->withQueryString()->links() }}
                        @endif
                    </ul>
                </div>

            </div>
        </div>
    </section>
@endsection
