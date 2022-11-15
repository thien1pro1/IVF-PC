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
    <a href="{{route('book.detailHistory',['id'=>$data['id']])}}" style="background-color: lightyellow" style="float:right">Tra cứu</a>



  
 
    
</body>
</html>
