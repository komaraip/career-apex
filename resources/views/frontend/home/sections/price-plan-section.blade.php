<section class="section-box mt-90">
    <div class="container">
      <h2 class="text-center mb-15 wow animate__animated animate__fadeInUp">Pricing Plan</h2>
      <div class="font-lg color-text-paragraph-2 text-center wow animate__animated animate__fadeInUp">Choose The Best
        Plan That&rsquo;s For You</div>
      <div class="max-width-price">
        <div class="block-pricing mt-70">
          <div class="row">
            @foreach ($plans as $plan)
            <div class="col-xl-4 col-lg-6 col-md-6 wow animate__animated animate__fadeInUp">
              <div class="box-pricing-item">
                <h3>{{ $plan->label }}</h3>
                <div class="box-info-price"><span class="text-price color-brand-2">${{ $plan->price }}</span></div>
                <ul class="list-package-feature">
                  <li>{{ $plan->job_limit }} Job Limit</li>
                  <li>{{ $plan->featured_job_limit }} Featured Job Limit</li>
                  <li>{{ $plan->highlight_job_limit }} Highlight Job Limit</li>
                  @if ($plan->profile_verified)
                  <li>Profile Verified</li>
                  @else
                  <li><strike>Profile Verified</strike></li>
                  @endif

                </ul>
                <div><a class="btn btn-border" href="{{ route('checkout.index', $plan->id) }}">Choose plan</a></div>
              </div>
            </div>
            @endforeach

          </div>
        </div>
      </div>
    </div>
  </section>
