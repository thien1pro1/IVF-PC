@extends('layouts.admin')
@section('content')
@php
use App\Http\Constants\TypeMedicine;
@endphp

<h3>Thêm đơn thuốc</h3><br>
<div class = "container">
    <select id="typeMedicine" onchange="getMedicines()">
        <option value="">Chọn loại thuốc</option>
        <option value="{{TypeMedicine::$ThuocDacTri}}">Thuốc đặc trị</option>
        <option value="{{TypeMedicine::$ThuocHieuTri}}">Thuốc hiệu trị</option>

        <option value="{{TypeMedicine::$KhangSinh}}">Kháng sinh</option>

        <option value="{{TypeMedicine::$Vitamin}}">Vitamin</option>

        <option value="{{TypeMedicine::$DungCuYTe}}">Dụng cụ y tế</option>

    </select>
    

    <select id="nameMedicine" >
        <option value="">Chọn thuốc</option>
    </select>
    <button onclick="medicineToBill()">Thêm</button>


@php
     $user_id= Auth::user()->id;
@endphp
</div>
<div class="container">
    <form method= "POST" action="{{route('addBill',['user'=>$user_id,'book'=>$book->id])}}">
        @csrf

    <table id="medicineTable" class="table align-items-center justify-content-center mb-0">
        <thead>
            <tr>
                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                    STT</th>
                <th
                    class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                    Tên thuốc</th>
                <th
                    class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">
                    Số lượng</th>
                <th>
                    Xóa
                </th>
            </tr>
        </thead>
        
    </table>
    <button type="submit">Xuất đơn thuốc</button>

</form>


    


</div>
<script>
    var index = 0;
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
        cell3.innerHTML = "<input type='number' name='amount[]' class='text-xs font-weight-bold' value='1''>";
        index++;
        cell4.innerHTML="<button onclick='deleteMedicine()'>Xóa</button>";
    }

    function deleteMedicine() {
        if(index>0){
            document.getElementById("medicineTable").deleteRow(index);

        }

}

</script>
@endsection