<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" >
</head>
<body>
    <h3>Xác nhận đăng kí khám</h3>
    <p>{{$data['body']}}</p>
    <br>
    <a href="{{route('book.confirm',['id'=>$data['id']])}}" style="background-color: white; padding: 5px;" style="float:right">Xác nhận</a>
    


  
 
    
</body>
</html>
