@extends('frontend.layouts.master')
@section('contents')
<section class="section-box mt-75">
    <div class="breacrumb-cover">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-12">
            <h2 class="mb-20">Forgot Password</h2>
            <ul class="breadcrumbs">
              <li><a class="home-icon" href="{{ url('/') }}">Home</a></li>
              <li>Forgot Password</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="pt-120 login-register">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 col-md-6 col-sm-12 mx-auto">
          <div class="login-register-cover">
            <div class="text-center">
              <h2 class="mt-10 mb-5 text-brand-1">Forgot Password!</h2>
              <p class="font-sm text-muted mb-30">Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.</p>
            </div>

            <!-- Session Status -->
            <x-auth-session-status class="mb-4" :status="session('status')" />

            <form class="login-register text-start mt-20" method="POST" action="{{ route('password.email') }}">
                @csrf
              <div class="form-group">
                <input class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" id="input-1" type="email" required="" name="email"
                  placeholder="stevenjob@gmail.com" value="{{ old('email') }}">
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
              </div>

              <div class="form-group">
                <button class="btn btn-default hover-up w-100" type="submit" name="continue">Email Password Reset Link</button>
              </div>
              <div class="text-muted text-center">Don't have an Account? <a href="{{ route('register') }}">Sign up</a></div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <div class="mt-120"></div>

@endsection
