@extends('layouts.admin')
@section('content')
    @php
        use App\Http\Constants\BookingStatus;
        
    @endphp
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
                        <h4>Danh sách đặt lịch</h4>
                    </div>
                    <div class="form-group col-12">









                        <form action="{{ route('searchBook') }}" method="GET" class="d-flex search-header">


                            <input style="height: 50px ;width: 400px; margin-right: 10px; margin-left: 10px;" name="search"
                                class="form-control" type="search" placeholder="Bạn muốn tìm..." aria-label="Search"
                                required>



                            <select style="height: 50px ;width: 200px; margin-right: 10px;" class="form-select"
                                name="status" aria-label="Default select example">
                                <option value="9">Tất cả</option>
                                <option value="{{ BookingStatus::$CONFIRMED_EMAIL }}">Chờ duyệt</option>
                                <option value="{{ BookingStatus::$CONFIRMED_STAFF }}">Đã duyệt</option>

                                <option value="{{ BookingStatus::$FINISHED }}">Đã khám</option>

                                <option value="{{ BookingStatus::$CANCELED }}">Đã hủy</option>
                            </select>
                            <button style="height: 50px ;width: 100px; margin-right: 10px;" class="form-control"
                                type="submit" aria-label="Search" required> Tìm kiếm
                            </button>




                    </div>
                    </form>
                    <div class="card-body px-0 pt-0 pb-2">
                        <div class="table-responsive p-0">
                            <table class="table align-items-center justify-content-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Ngày
                                            hẹn khám</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Họ tên chồng</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Họ tên vợ</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Phòng khám</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Barcode</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Trạng thái</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">
                                            Quản lý</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($books as $book)
                                        <tr class="tbody">
                                            <td>
                                                <div class="d-flex px-2">
        
                                                    <div class="my-auto">
                                                        <h6 class="mb-0 text-sm">{{ $book->register_time }} |
                                                            {{ $book->register_date }}</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <span class="text-xs font-weight-bold">{{ $book->hus_name }}</span>
                                            </td>
                                            <td>
                                                <span class="text-xs font-weight-bold">{{ $book->wife_name }}</span>
                                            </td>
                                            @if ($book->room_id != null)
                                                <td>
                                                    <span class="text-xs font-weight-bold">{{ $book->room->name }}</span>
                                                </td>
                                            @else
                                                <td> <span class="text-xs font-weight-bold">Chưa có phòng</span>
                                                </td>
                                            @endif
                                            @php
                                                $barcode = new Picqer\Barcode\BarcodeGeneratorPNG();
                                                $xx = 'data:image/png;base64,' . base64_encode($barcode->getBarcode($book->id, $barcode::TYPE_CODE_128, 3, 30));
                                            @endphp
                                            <td>
                                                <img src="{{ $xx }}">
                                            </td>
        
                                            <td>
                                                @if ($book->status == BookingStatus::$CONFIRMED_EMAIL)
                                                    <span class="text text-success">Chờ duyệt</span>
                                                @elseif($book->status == BookingStatus::$CONFIRMED_STAFF)
                                                    <span class="text text-primary">Đã duyệt</span>
                                                @elseif($book->status == BookingStatus::$FINISHED)
                                                    <span class="text text-muted">Đã khám</span>
                                                @else
                                                    <span class="text text-danger">Đã hủy</span>
                                                @endif
                                            </td>
                                            <td class="align-middle">
                                                @if ($book->status <= 2)
                                                    <a href="{{ route('book.edit', [$book->id]) }}" class="btn btn-light">Duyệt</a>
                                                @else
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
        
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            

            </div>
        </div>
    </div>



    <script>
        function clearBox(id) {
            const x = document.getElementClassName(id);
            for (var i = 0; i <= 100; i++) {
                x[i].innerHTML = "";
                i++;
            }

        }

        function showBook() {
            var search = document.getElementById("search").value;

            const response = await fetch('http://127.0.0.1:8000/api/admin/searchBook/' + typeMedicine, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                }
            });
            const books = await response.json();
            books.forEach(book => {
                let id = book.id;
                let register_time = book.register_time;
                let register_date = book.register_date;
                let hus_name = book.hus_name;
                let wife_name = book.wife_name;
                if (book.room_id != null) {
                    let room = book.room.name;
                } else {
                    let room = "Chưa có phòng";
                }

            });

        }
    </script>
@endsection
