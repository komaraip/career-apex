<section class="section-box mt-90 mb-50">
    <div class="container">
      <div class="text-center">
        <h2 class="section-title mb-10 wow animate__animated animate__fadeInUp">News And Blog</h2>
        <p class="font-lg color-text-paragraph-2 wow animate__animated animate__fadeInUp">Get the latest news, updates
          and tips</p>
      </div>
    </div>
    <div class="container">
      <div class="mt-50">
        <div class="box-swiper style-nav-top">
          <div class="swiper-container swiper-group-3 swiper">
            <div class="swiper-wrapper pt-5">
                @foreach ($blogs as $blog)
                <div class="swiper-slide">
                  <div class="card-grid-3 hover-up wow animate__animated animate__fadeIn">
                    <div class="text-center card-grid-3-image"><a href="{{ route('blogs.show', $blog->slug) }}">
                        <figure><img alt="joblist" src="{{ asset($blog->image) }}"></figure>
                      </a></div>
                    <div class="card-block-info">
                      <h5><a href="{{ route('blogs.show', $blog->slug) }}">{{ $blog->title }}</a></h5>
                      <p class="mt-10 color-text-paragraph font-sm">{{ Str::limit(strip_tags($blog->description), 100, '...') }}</p>
                      <div class="card-2-bottom mt-20">
                        <div class="row">
                          <div class="col-lg-6 col-6">
                            <div class="d-flex">
                              <div class="info-right-img"><span class="font-sm font-bold color-brand-1 op-70">{{ $blog->author->name }}</span>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-6 text-end col-6">{{ formatDate($blog->created_at) }}</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                @endforeach

            </div>
          </div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
        </div>
      </div>
    </div>
  </section>
