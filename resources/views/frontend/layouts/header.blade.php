<header class="header sticky-bar">
    <div class="container">
        <div class="main-header">
            <div class="header-left">
                <div class="header-logo"><a class="d-flex" href="{{ url('/') }}"><img alt="career apex"
                            src="{{ config('settings.site_logo') }}"></a></div>
            </div>
            <div class="header-nav">
                <nav class="nav-main-menu">
                    @php
                        $navigationMenu = \Menu::getByName('Navigation Menu');

                    @endphp
                    <ul class="main-menu">
                        @foreach ($navigationMenu as $menu)
                            @if ($menu['child'])
                                <li class="has-children"><a href="{{ $menu['link'] }}">{{ $menu['label'] }}</a>
                                    <ul class="sub-menu">
                                        @foreach ($menu['child'] as $childMenu)
                                            <li><a href="{{ $childMenu['link'] }}">{{ $childMenu['label'] }}</a></li>
                                        @endforeach
                                    </ul>
                                </li>
                            @else
                                @if (auth()->user()?->role == 'candidate' && $menu['link'] != '/pricing')
                                    <li class="has-children"><a class=""
                                            href="{{ $menu['link'] }}">{{ $menu['label'] }}</a></li>
                                @else
                                    <li class="has-children"><a class=""
                                            href="{{ $menu['link'] }}">{{ $menu['label'] }}</a></li>
                                @endif
                            @endif
                        @endforeach
                    </ul>
                </nav>
                <div class="burger-icon burger-icon-white">
                    <span class="burger-icon-top"></span>
                    <span class="burger-icon-mid"></span>
                    <span class="burger-icon-bottom"></span>
                </div>
            </div>

            <div class="header-right">
                <div class="block-signin">
                    @guest
                        <a class="btn btn-default btn-shadow ml-40 hover-up" href="{{ route('login') }}">Login</a>
                    @endguest
                    @auth
                        @if (auth()->user()->role === 'company')
                            <a class="btn btn-default btn-shadow ml-40 hover-up" style="width: 200px"
                                href="{{ route('company.dashboard') }}">Company Dashobard</a>
                        @elseif(auth()->user()->role === 'candidate')
                            <a class="btn btn-default btn-shadow ml-40 hover-up" style="width: 200px"
                                href="{{ route('candidate.dashboard') }}">Candidate Dashboard</a>
                        @endif
                    @endauth
                </div>
            </div>
        </div>
    </div>
</header>

<div class="mobile-header-active mobile-header-wrapper-style perfect-scrollbar">
    <div class="mobile-header-wrapper-inner">
        <div class="mobile-header-content-area">
            <div class="perfect-scroll">
                <div class="mobile-search mobile-header-border mb-30">
                    <form action="#">
                        <input type="text" placeholder="Search…"><i class="fi-rr-search"></i>
                    </form>
                </div>

                <div class="mobile-menu-wrap mobile-header-border">
                    <nav>
                        @php
                        $navigationMenu = \Menu::getByName('Navigation Menu');

                        @endphp
                        <ul class="mobile-menu font-heading">
                            @foreach ($navigationMenu as $menu)
                                @if ($menu['child'])
                                    <li class="has-children"><a href="{{ $menu['link'] }}">{{ $menu['label'] }}</a>
                                        <ul class="sub-menu">
                                            @foreach ($menu['child'] as $childMenu)
                                                <li><a href="{{ $childMenu['link'] }}">{{ $childMenu['label'] }}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                @else
                                    @if (auth()->user()?->role == 'candidate' && $menu['link'] != '/pricing')
                                        <li class="has-children"><a class=""
                                                href="{{ $menu['link'] }}">{{ $menu['label'] }}</a></li>
                                    @else
                                        <li class="has-children"><a class=""
                                                href="{{ $menu['link'] }}">{{ $menu['label'] }}</a></li>
                                    @endif
                                @endif
                            @endforeach
                        </ul>
                    </nav>
                </div>

                <div class="mobile-account">
                    <div class="block-signin">
                        @guest
                        <a class="btn btn-default btn-shadow hover-up" href="{{ route('register') }}">Register</a>
                        <a class="btn btn-default btn-shadow ml-20 hover-up" href="{{ route('login') }}">Login</a>
                        @endguest
                        @auth
                            @if (auth()->user()->role === 'company')
                                <a class="btn btn-default btn-shadow ml-40 hover-up" style="width: 200px"
                                    href="{{ route('company.dashboard') }}">Company Dashobard</a>
                            @elseif(auth()->user()->role === 'candidate')
                                <a class="btn btn-default btn-shadow ml-40 hover-up" style="width: 200px"
                                    href="{{ route('candidate.dashboard') }}">Candidate Dashboard</a>
                            @endif
                        @endauth
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
