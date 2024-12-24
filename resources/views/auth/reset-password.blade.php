
@extends('frontend.layouts.master')
@section('contents')
<section class="section-box mt-75">
    <div class="breacrumb-cover">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-12">
            <h2 class="mb-20">Reset Password</h2>
            <ul class="breadcrumbs">
              <li><a class="home-icon" href="{{ url('/') }}">Home</a></li>
              <li>Reset Password</li>
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
              <h2 class="mt-10 mb-5 text-brand-1">Reset Password!</h2>
              <p class="font-sm text-muted mb-30">Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.</p>
            </div>

            <form class="login-register text-start mt-20" method="POST" action="{{ route('password.store') }}">
                @csrf
                <!-- Password Reset Token -->
                <input type="hidden" name="token" value="{{ $request->route('token') }}">
              <div class="form-group">
                <label for="input-1">Email *</label>
                <input class="form-control" id="input-1" type="email" required="" name="email"
                  placeholder="stevenjob@gmail.com" value="{{ old('email', $request->email) }}">
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
              </div>

              <div class="form-group">
                <label for="input-1">Password *</label>

                <input class="form-control {{ $errors->has('password') ? 'is-invalid' : '' }}" id="input-2" type="password" required="" name="password"
                  placeholder="*********">
                <x-input-error :messages="$errors->get('password')" class="mt-2" />
              </div>

              <div class="form-group">
                <label for="input-1">Confirm Password *</label>

                <input class="form-control {{ $errors->has('password_confirmation') ? 'is-invalid' : '' }}" id="input-3" type="password" required="" name="password_confirmation"
                  placeholder="*********">
                <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
              </div>

              <div class="form-group">
                <button class="btn btn-default hover-up w-100" type="submit" name="continue">Reset Password</button>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </section>

  <div class="mt-120"></div>

@endsection


