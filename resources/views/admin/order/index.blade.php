@extends('admin.layouts.master')

@section('contents')
    <section class="section">
        <div class="section-header">
            <h1>Orders</h1>
        </div>

        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>All Orders</h4>
                        <div class="card-header-form">
                            <form action="{{ route('admin.orders.index') }}" method="GET">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" name="search"
                                        value="{{ request('search') }}">
                                    <div class="input-group-btn">
                                        <button type="submit" style="height: 40px;" class="btn btn-primary"><i
                                                class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th>Order & Transaction</th>
                                    <th>Company</th>
                                    <th>Plan</th>
                                    <th>Paid Amount</th>
                                    <th>Main Price</th>
                                    <th>Payment Method</th>
                                    <th>Payment Status</th>
                                    <th style="width: 10%">Action</th>
                                </tr>
                                <tbody>
                                    @foreach ($orders as $order)
                                        <tr>
                                            <td>
                                                #{{ $order->order_id }}
                                                <br>
                                                Transaction: {{ $order->transaction_id }}
                                            </td>

                                            <td>
                                                <div class="d-flex">
                                                    <div class="mr-2">
                                                        <img style="width: 50px; height:50px; object-fit:cover"
                                                            src="{{ asset($order->company->logo) }}" alt="">
                                                    </div>
                                                    <div>
                                                        <b>{{ $order->company->name }}</b>
                                                        <br>
                                                        {{ $order->company->email }}

                                                    </div>
                                                </div>
                                            </td>

                                            <td>
                                                {{ $order->package_name }}
                                            </td>

                                            <td>
                                                {{ $order->amount }} {{ $order->paid_in_currency }}
                                            </td>
                                            <td>
                                                {{ $order->default_amount }}
                                            </td>
                                            <td>
                                                {{ $order->payment_provider }}
                                            </td>
                                            <td>
                                                <p class="badge bg-primary text-light">{{ $order->payment_status }}</p>
                                            </td>

                                            <td>
                                                <a href="{{ route('admin.orders.show', $order->id) }}"
                                                    class="btn-sm btn btn-primary">View Details</a>

                                            </td>
                                        </tr>
                                    @endforeach

                                </tbody>

                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            @if ($orders->hasPages())
                                {{ $orders->withQueryString()->links() }}
                            @endif
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
