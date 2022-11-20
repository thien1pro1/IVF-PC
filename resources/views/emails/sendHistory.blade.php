<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" >
</head>
<body>
    <h3>{{$data['subject']}}</h3><br>
    <p>{{$data['body']}}</p>
    <br>
    Tra cứu lịch sử khám bệnh của bạn ngay tại đây
    <a href="{{route('book.history',['email'=>$data['email']])}}" style="background-color: red" style="float:right">Duyệt</a>



  
 
    
</body>
</html>
