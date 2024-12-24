<div class="col-lg-3 col-md-4 col-sm-12">
    <div class="box-nav-tabs nav-tavs-profile mb-5">
        <ul class="nav" role="tablist">
            <li><a class="btn btn-border mb-20 active" href="{{ route('company.dashboard') }}">Dashboard</a>
            </li>
            <li><a class="btn btn-border mb-20" href="{{ route('company.jobs.index') }}">Jobs</a>
            </li>
            {{-- <li><a class="btn btn-border mb-20" href="{{ route('company.orders.index') }}">Orders</a></li> --}}
            <li><a class="btn btn-border mb-20" href="{{ route('company.profile') }}">My Profile</a></li>
            <li>
                 <!-- Authentication -->
                 <form method="POST" action="{{ route('logout') }}">
                    @csrf
                <a class="btn btn-border mb-20" onclick="event.preventDefault();
                this.closest('form').submit();" href="{{ route('logout') }}">Logout</a>

                </form>
            </li>
        </ul>

    </div>
</div>
