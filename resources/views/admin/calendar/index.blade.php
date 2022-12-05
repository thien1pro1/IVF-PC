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
                        <table class="table table-striped">
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

                                        <td>
                                            @if ($calendar->shift1 == null)
                                                <select name="shift1">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift1">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift1)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca1 --}}
                                        <td>
                                            @if ($calendar->shift3 == null)
                                                <select name="shift3">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift3">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift3)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca3 --}}

                                        <td>
                                            @if ($calendar->shift5 == null)
                                                <select name="shift5">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift5">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift5)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca5 --}}
                                        <td>
                                            @if ($calendar->shift7 == null)
                                                <select name="shift7">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift7">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift7)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca7 --}}
                                        <td>
                                            @if ($calendar->shift9 == null)
                                                <select name="shift9">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift9">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift9)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca9 --}}
                                        <td>
                                            @if ($calendar->shift11 == null)
                                                <select name="shift11">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift11">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift11)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif
                                            


                                        </td>
                                        {{-- ca11 --}}
                                        {{-- sang --}}

                                    </tr>
                                    <tr>
                                        <th scope="row">Chiều</th>
                                        <td>
                                            @if ($calendar->shift2 == null)
                                                <select name="shift2">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift2">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift2)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca2 --}}
                                        <td>
                                            @if ($calendar->shift4 == null)
                                                <select name="shift4">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift4">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift4)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca4 --}}
                                        <td>
                                            @if ($calendar->shift6 == null)
                                                <select name="shift6">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift6">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift6)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca6 --}}
                                        <td>
                                            @if ($calendar->shift8 == null)
                                                <select name="shift8">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift8">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift8)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca8 --}}
                                        <td>
                                            @if ($calendar->shift10 == null)
                                                <select name="shift10">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift10">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift10)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca10 --}}
                                        <td>
                                            @if ($calendar->shift12 == null)
                                                <select name="shift12">
                                                    <option value=""> Trống ca </option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}">
                                                            {{ $user->name }}
                                                        </option>
                                                    @endforeach


                                                </select>
                                            @else
                                                <select name="shift12">
                                                    @foreach ($users as $user)
                                                        @if ($user->id == $calendar->shift12)
                                                            <option selected value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @else
                                                            <option value="{{ $user->id }}">
                                                                {{ $user->name }}
                                                            </option>
                                                        @endif
                                                    @endforeach
                                                    <option value=""> Trống ca </option>
                                                </select>
                                            @endif



                                        </td>
                                        {{-- ca12 --}}
                                    </tr>
                                </tbody>

                        </table>
                        <button type="submit" class="btn btn-success">Lưu</button>
                        </form>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
