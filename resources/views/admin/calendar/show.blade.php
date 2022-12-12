@extends('layouts.admin')
@section('content')
    <div class="container">
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
        @endif
        <div class="row">

            <div class="col-12">

                <div class="card mb-4">
                    <div class="card-header pb-0">
                        <h4>Danh sách lịch trực</h4>
                    </div>
                    @foreach ($calendars as $calendar)
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Phòng {{ $calendar->room_id }}</th>
                                    <th scope="col">Thứ 2</th>
                                    <th scope="col">Thứ 3</th>
                                    <th scope="col">Thứ 4</th>
                                    <th scope="col">Thứ 5</th>
                                    <th scope="col">Thứ 6</th>
                                    <th scope="col">Thứ 7</th>
                                </tr>
                            </thead>
                            <form method="POST" action="{{ route('calendar.update', [$calendar->room_id]) }}">
                                @method('PUT')
                                @csrf
                                <tbody>
                                    <tr>
                                        <th scope="row">Sáng</th>

                                        <td class="col-2">
                                            @if ($calendar->shift1 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift1)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            
                                                                {{ $user->name }}
                                                            
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca1 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift3 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift3)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca3 --}}

                                        <td class="col-2">
                                            @if ($calendar->shift5 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift5)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca5 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift7 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift7)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca7 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift9 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift9)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca9 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift11 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift11)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca11 --}}
                                        {{-- sang --}}

                                    </tr>
                                    <tr>
                                        <th scope="row">Chiều</th>
                                        <td class="col-2">
                                            @if ($calendar->shift2 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift2)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>




                                        {{-- ca2 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift4 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift4)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca4 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift6 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift6)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca6 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift8 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift8)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca8 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift10 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift10)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca10 --}}
                                        <td class="col-2">
                                            @if ($calendar->shift12 == null)
                                                Trống ca
                                            @else
                                                @foreach ($users as $user)
                                                    @if ($user->id == $calendar->shift12)
                                                        @if (Auth::user()->id == $user->id)
                                                            <span class="text-success">{{ $user->name }}</span>
                                                        @else
                                                            {{ $user->name }}
                                                        @endif
                                                    @endif
                                                @endforeach
                                            @endif
                                        </td>
                                        {{-- ca12 --}}
                                    </tr>
                                </tbody>

                        </table>
                        </form>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
