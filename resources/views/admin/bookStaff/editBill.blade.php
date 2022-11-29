@extends('layouts.admin')
@section('content')
@php
use App\Http\Constants\TypeMedicine;
@endphp
<div class="form-content ml-sm-left mx-auto">
<div class="row mb-1">

            


              <div class="col-md-4 mb-4">
            <label for="inputtextnumber"
              class="form-label">Sửa đơn thuốc</label>
            <select style="padding: 10px; margin-top: 10px;" class="form-select" aria-label="Default select example"
              name="w3lServices" id="typeMedicine" onchange="getMedicines()">
              <option selected>Chọn loại thuốc</option>
              <option value="{{TypeMedicine::$ThuocDacTri}}">Thuốc đặc trị</option>
        <option value="{{TypeMedicine::$ThuocHieuTri}}">Thuốc hiệu trị</option>

        <option value="{{TypeMedicine::$KhangSinh}}">Kháng sinh</option>

        <option value="{{TypeMedicine::$Vitamin}}">Vitamin</option>

        <option value="{{TypeMedicine::$DungCuYTe}}">Dụng cụ y tế</option>

            </select>
          </div>
          <div class="col-md-4 mb-4">
            <label for="inputtextnumber"
              class="form-label">Thêm thuốc</label>

            <select style="padding: 10px; margin-top: 10px;" class="form-select" aria-label="Default select example"
              name="w3lServices" id="nameMedicine" onchange="getMedicines()">
              <option selected>Chọn thuốc</option>
              
            </select>
          </div>
        


               <div class="col-md-4 mb-4">
                            <label for="inputtextnumber"
              class="form-label"></label><br>
          <button onclick="medicineToBill()" class="btn btn-style mt-sm-3">Thêm</button>
        </div>
    </div>
</div>


@php
     $user_id= Auth::user()->id;
@endphp
          </div>


<div class="container">
    <form method= "POST" action="{{route('saveBill',['user'=>$user_id,'book'=>$book->id,'bill'=>$bill->id])}}">
        @csrf

    <table id="medicineTable" class="table align-items-center justify-content-center mb-0">
        <thead>
            <tr>
                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                    STT</th>
                <th
                    class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                    Tên thuốc</th>
                <th style="margin-left: 100px;" 
                    class="text-uppercase text-secondary text-xxs font-weight-bolder  opacity-7 ps-2">
                    Số lượng</th>



               <th
                    class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                    Xóa</th>
            </tr>
        </thead>
        @foreach ($bill->medicines()->get() as $key => $medicine)
            <tr>
                <td><span class='text-xs font-weight-bold' >{{$key}}</span><input type='hidden' name='id[]' class='text-xs font-weight-bold' value='"+idMedicine+"''></td>
                <td><span class='text-xs font-weight-bold' >{{$medicine->name}}</span></td>
                <td><input style='border: 2px solid gray ;   min="0" border-radius: 4px; ' type='number' name='amount[]' id='inputtextnumber' value='{{$medicine->pivot->amount}}'></td>
                <td><button type='button' class='btn btn-style mt-sm-3' onclick=' deleteMedicine()'>Xóa</button></td>
            </tr>
            
        @endforeach
    </table>
    

    <div class="col-md-4 mb-4">
                            <label for="inputtextnumber"
              class="form-label"></label><br>
          <button type="submit" class="btn btn-style mt-sm-3">Lưu</button>
        </div>

</form>


    


</div>
<script>
    var index = document.getElementById("medicineTable").rows.length-1;
    async function getMedicines(){
        
        var typeMedicine = document.getElementById("typeMedicine").value;
        
        const response = await fetch('http://127.0.0.1:8000/api/admin/type-to-medicines/' +typeMedicine, {
                method: 'GET',
                headers: {
                'Content-Type': 'application/json'
                }
            });
        const medicines = await response.json(); //extract JSON from the http responseư
        var nameMedicine = document.getElementById("nameMedicine");
        nameMedicine.innerHTML = '';
        medicines.forEach(medicine => {
            let idMedicine = medicine.id;
            let name = medicine.name;
            let nameMedicine = document.getElementById("nameMedicine");
            let option = document.createElement("option");
            option.value = idMedicine;
            option.text = name;
            nameMedicine.add(option);
        });
    }



     function medicineToBill(){
        let idMedicine = document.getElementById("nameMedicine").value;
        // let nameMedicine = document.getElementById("nameMedicine").innerHTML;

        var e = document.getElementById("nameMedicine");
        var text = e.options[e.selectedIndex].text;
        let a = index + 1;
        var medicineTable = document.getElementById("medicineTable");
        var row = medicineTable.insertRow(index+1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        cell1.innerHTML = "<span class='text-xs font-weight-bold' >"
            +a+"</span><input type='hidden' name='id[]' class='text-xs font-weight-bold' value='"+idMedicine+"''>";
        cell2.innerHTML = "<span class='text-xs font-weight-bold' >"
            +text+"</span>";
        cell3.innerHTML = "<input style='border: 2px solid gray ;    border-radius: 4px; ' type='number' name='amount[]' id='inputtextnumber' value='1''>";

        


        index++;
        cell4.innerHTML="<button type='button' class='btn btn-style mt-sm-3' onclick=' deleteMedicine()'>Xóa</button>";

        
    }

    function deleteMedicine() {
     
        if(index>0){
            document.getElementById("medicineTable").deleteRow(index);
            index-=1;

        }

}

</script>
@endsection