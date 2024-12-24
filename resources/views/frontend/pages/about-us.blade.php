@extends('frontend.layouts.master')

@section('contents')
<section class="section-box mt-75">
    <div class="breacrumb-cover">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-12">
            <h2 class="mb-20">About Us</h2>
            <ul class="breadcrumbs">
              <li><a class="home-icon" href="{{ url('/') }}">Home</a></li>
              <li>About Us</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section-box mt-120">

    <div class="post-loop-grid">
      <div class="container">
        <div class="text-center">
          <h6 class="f-18 color-text-mutted text-uppercase">Our company</h6>
          <h2 class="section-title mb-10 wow animate__animated animate__fadeInUp">About Our Company</h2>
          <p class="font-sm color-text-paragraph wow animate__animated animate__fadeInUp w-lg-50 mx-auto"> {{ config('settings.site_name') }} is more than just a job board; it's a dynamic hub connecting talented individuals with their dream careers and empowering businesses to unlock their full potential. We bridge the gap between job seekers and employers, making the recruitment process smooth, efficient, and accessible for everyone.</p>
        </div>

        <div class="row justify-content-between mt-70">
          <div class="col-lg-6 col-md-12 col-sm-12">
            <h3 class="mt-15">{{ $about?->title }}</h3>
            <div class="mt-20">
              <p class="font-md color-text-paragraph mt-20">{!! $about?->description !!}</p>
            </div>
            @if ($about?->url)
            <div class="mt-30"><a class="btn btn-default" href="{{ $about?->url }}">Read More</a></div>
            @endif
          </div>
          <div class="col-lg-5 col-md-12 col-sm-12"><img src="{{ asset($about?->image) }}" alt="joxBox">
          </div>
        </div>
      </div>
    </div>
  </section>

  @include('frontend.home.sections.review-section')

  @include('frontend.home.sections.blog-section')


@endsection
