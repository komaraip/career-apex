@extends('frontend.layouts.master')

@section('contents')
<section class="section-box mt-75">
    <div class="breacrumb-cover">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-12">
            <h2 class="mb-20">Payment Cancel</h2>
            <ul class="breadcrumbs">
              <li><a class="home-icon" href="index.html">Home</a></li>
              <li>Payment Cancel</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section-box mt-90">
    <div class="container">
        <div style="text-align: center;
        margin-bottom: 90px;">
            <i class="fas fa-times-circle" style="font-size: 100px; color: red;"></i>
            <h2>Payment Canceled.</h2>
            @if (session('errors'))

            <p class="alert alert-danger mt-4" style="width: 400px; margin:auto">{{ session('errors')->first('error') }}</p>
            @endif

            <a class="btn btn-default btn-shadow hover-up mt-4" href="{{ route('company.dashboard') }}">Go to dashboard</a>
        </div>
    </div>
  </section>
@endsection
