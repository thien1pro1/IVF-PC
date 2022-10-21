
 @extends('layouts.admin')
@section('content')
            <div id="page-wrapper">
                <!DOCTYPE html>
                <html>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
                <body>
                
                <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
                
                <script>
                var xValues = ["Lịch chưa duyệt", "lịch đã duyệt", "lịch đã khám", "Lịch đã hủy"];
                var yValues = [{{$waiting_book}}, {{$accept_book}}, {{$finish_book}}, {{$cancel_book}}];
                var barColors = [
                  "#b91d47",
                  "#00aba9",
                  "#2b5797",
                  "#e8c3b9",
                  "#1e7145"
                ];
                
                new Chart("myChart", {
                  type: "pie",
                  data: {
                    labels: xValues,
                    datasets: [{
                      backgroundColor: barColors,
                      data: yValues
                    }]
                  },
                  options: {
                    title: {
                      display: true,
                      text: "Thống kê lịch khám"
                    }
                  }
                });
                </script>
                
                </body>
                </html>
                
                <!-- /.container-fluid -->
            </div>
@endsection
