@extends('frontend.layouts.master')
@section('contents')
<section class="section-box mt-75">
    <div class="breacrumb-cover">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-12">
            <h2 class="mb-20">Blog</h2>
            <ul class="breadcrumbs">
              <li><a class="home-icon" href="index.html">Home</a></li>
              <li>Blog</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section-box mt-90">
    <div class="post-loop-grid">
      <div class="container">
        <div class="row mt-30">
          <div class="col-lg-8">
            <div class="row">
            @foreach ($blogs as $blog)
            <div class="col-lg-6 mb-30">
              <div class="card-grid-3 hover-up">
                <div class="text-center card-grid-3-image"><a href="blog-details.html">
                    <figure><img alt="joblist" src="{{ asset($blog->image) }}"></figure>
                  </a></div>
                <div class="card-block-info">
                  <h5><a href="{{ route('blogs.show', $blog->slug) }}">{{ $blog->title }}</a></h5>
                  <p class="mt-10 color-text-paragraph font-sm">{{ Str::limit(strip_tags($blog->description), $limit = 150, $end = '...') }}</p>
                  <div class="card-2-bottom mt-20">
                    <div class="row">
                      <div class="col-lg-6 col-6">
                        <div class="d-flex">
                          <div class="info-right-img"><span class="font-sm font-bold color-brand-1 op-70">{{ $blog->author->name }}</span><br></div>
                        </div>
                      </div>
                      <div class="col-lg-6 text-end col-6 pt-15"><span class="color-text-paragraph-2 font-xs">{{ formatDate($blog->created_at) }}</span></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            @endforeach

            </div>

            <div class="paginations">
                <ul class="pager">
                    @if ($blogs->hasPages())
                    {{ $blogs->withQueryString()->links() }}
                    @endif
                </ul>
            </div>
          </div>
          <div class="col-lg-4 col-md-12 col-sm-12 col-12 pl-40 pl-lg-15 mt-lg-30">
            <div class="widget_search mb-40">
              <div class="search-form">
                <form action="{{ route('blogs.index') }}">
                  <input type="text" placeholder="Search…" name="search" value="{{ request()->search }}">
                  <button type="submit"><i class="fi-rr-search"></i></button>
                </form>
              </div>
            </div>
            <div class="sidebar-shadow sidebar-news-small">
              <h5 class="sidebar-title">Featured</h5>
              <div class="post-list-small">
                @foreach ($featured as $blog)
                <div class="post-list-small-item d-flex align-items-center">
                  <figure class="thumb mr-15"><img src="{{ asset($blog->image) }}" alt="joblist">
                  </figure>
                  <div class="content">
                    <a href="{{ route('blogs.show', $blog->slug) }}"><h5>{{ $blog->title }}</h5></a>
                    <div class="post-meta text-muted d-flex align-items-center mb-15">
                      <div class="author d-flex align-items-center mr-20"><span>{{ $blog->author->name }}</span></div>
                    </div>
                  </div>
                </div>
                @endforeach

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>
@endsection
