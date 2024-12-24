<section class="section-box mt-80">
    <div class="container">
        <div class="text-center">
            <h2 class="section-title mb-10 wow animate__animated animate__fadeInUp">Jobs by Location</h2>
            <p class="font-lg color-text-paragraph-2 wow animate__animated animate__fadeInUp">Find your favourite jobs
                and
                get the benefits of yourself</p>
        </div>
    </div>
    <div class="container">
        <div class="row mt-50">
            @foreach ($locations as $location)
                <div class="col-xl-3 col-lg-3 col-md-5 col-sm-12 col-12">
                    <div class="card-image-top hover-up"><a href="{{ route('companies.index', ['country' => $location->country_id]) }}">
                            <div class="image" style="background-image: url({{ asset($location->image) }});"><span
                                    class="lbl-hot">{{ $location->status }}</span></div>
                        </a>
                        <div class="informations">
                            <a href="{{ route('companies.index', ['country' => $location->country_id]) }}">
                                <h5>{{ $location->country->name }}</h5>
                            </a>
                            <div class="row">
                                <div class="col-lg-6 col-6"><span
                                        class="text-14 color-text-paragraph-2">{{ $location->country->companies->count() }}
                                        companies</span></div>
                                <div class="col-lg-6 col-6 text-end"><span
                                        class="color-text-paragraph-2 text-14"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
</section>
