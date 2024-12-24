<section class="section-box futured_jobs mt-20">
    <div class="container">
        <div class="text-center">
            <h2 class="section-title mb-10 wow animate__animated animate__fadeInUp">Featured Jobs</h2>
            <p class="font-lg color-text-paragraph-2 wow animate__animated animate__fadeInUp">Check out our latest
                featred job's</p>
            <div class="list-tabs mt-40">
                <ul class="nav nav-tabs" role="tablist">
                    @foreach ($featuredCategories as $category)
                        <li><a class="{{ $loop->index === 0 ? 'active' : '' }}" id="nav-tab-job-{{ $category->id }}"
                                href="#tab-job-{{ $category->id }}" data-bs-toggle="tab" role="tab"
                                aria-controls="tab-job-{{ $category->id }}"
                                aria-selected="true">{{ $category->name }}</a></li>
                    @endforeach

                </ul>
            </div>
        </div>
        <div class="mt-70">
            <div class="tab-content" id="myTabContent-1">
                @foreach ($featuredCategories as $category)
                    <div class="tab-pane fade show {{ $loop->index === 0 ? 'active' : '' }}"
                        id="tab-job-{{ $category->id }}" role="tabpanel" aria-labelledby="tab-job-{{ $category->id }}">
                        <div class="row">
                            @php
                                $featuredJobs = $category
                                    ->jobs()
                                    ->where('featured', 1)
                                    ->where(['status' => 'active'])
                                    ->where('deadline', '>=', date('Y-m-d'))
                                    ->latest()
                                    ->take(8)
                                    ->get();
                            @endphp
                            @foreach ($featuredJobs as $job)
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 col-12">
                                    <div class="card-grid-2 hover-up">
                                        <div class="card-grid-2-image-left"><span class="flash"></span>
                                            <div class="image-box"><img src="{{ asset($job->company?->logo) }}"
                                                    alt="joblist"></div>

                                        </div>
                                        <div class="card-block-info">
                                            <h6><a href="{{ route('jobs.show', $job->slug) }}">{{ Str::limit($job->title, 28, '...') }}</a>
                                            </h6>
                                            <div class="mt-5"><span
                                                    class="card-briefcase">{{ $job->jobType->name }}</span><span
                                                    class="card-time"><span>{{ $job->created_at->diffForHumans() }}</span></span>
                                            </div>
                                            <p>{{ Str::limit(strip_tags($job->description), 100, '...') }}</p>
                                            <div class="mt-30">
                                                @foreach ($job->skills as $jobSkill)
                                                    @if ($loop->index <= 3)
                                                        <a class="btn btn-grey-small mr-5 "
                                                            href="javascript:;">{{ $jobSkill->skill->name }}</a>
                                                    @elseif ($loop->index == 7)
                                                        <a class="btn btn-grey-small mr-5 "
                                                            href="javascript:;">More..</a>
                                                    @endif
                                                @endforeach
                                            </div>
                                        </div>
                                        @if ($job->salary_mode === 'range')

                                        <span class="card-text-price">{{ $job->min_salary }} - {{ $job->max_salary }} {{ config('settings.site_default_currency') }}</span>
                                        @else
                                        <span class="card-text-price">{{ $job->custom_salary }}</span>
                                        @endif
                                            <a href="{{ route('jobs.show', $job->slug) }}">
                                                <div class="btn btn-apply-now" >
                                                    View Post</div>
                                            </a>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
</section>
