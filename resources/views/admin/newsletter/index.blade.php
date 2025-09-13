@extends('admin.layouts.master')

@section('contents')
<section class="section">
    <div class="section-header">
        <h1>Newsletter Subscribers</h1>
    </div>

    <div class="section-body">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Send Newsletter</h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.newsletter-send-mail') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="">Subject</label>
                            <input type="text" class="form-control {{ hasError($errors, 'subject') }}" name="subject" value="{{ old('subject') }}">
                            <x-input-error :messages="$errors->get('subject')" class="mt-2" />
                        </div>
                        <div class="form-group">
                            <label for="">Message</label>
                            <textarea name="message" {{ hasError($errors, 'message') }} id="editor"> </textarea>
                            <x-input-error :messages="$errors->get('message')" class="mt-2" />
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</section>
    <section class="section">
        <div class="section-body">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4>All Subscribers</h4>
                        <div class="card-header-form">
                            <form action="{{ route('admin.newsletter.index') }}" method="GET">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search" name="search" value="{{ request('search') }}">
                                    <div class="input-group-btn">
                                        <button type="submit" style="height: 40px;" class="btn btn-primary"><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <th>Email</th>
                                    <th style="width: 10%">Action</th>
                                </tr>
                            <tbody>
                                @forelse ($subscribers as $subscriber)
                                    <tr>
                                        <td>{{ $subscriber->email }}</td>
                                        <td>

                                            <a href="{{ route('admin.newsletter.destroy', $subscriber->id) }}" class="btn-sm btn btn-danger delete-item"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="3" class="text-center">No result found!</td>
                                    </tr>
                                @endforelse

                            </tbody>

                            </table>
                        </div>
                    </div>
                    <div class="card-footer text-right">
                        <nav class="d-inline-block">
                            @if ($subscribers->hasPages())
                                {{ $subscribers->withQueryString()->links() }}
                            @endif
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
