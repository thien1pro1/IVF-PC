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



</div>
<div class="container">
    <table class="table align-items-center justify-content-center mb-0">
        <thead>
            <tr>
                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                    Tên Thuốc</th>
                <th
                    class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                    Loại</th>
                <th
                    class="text-uppercase text-secondary text-xxs font-weight-bolder text-center opacity-7 ps-2">
                    Số lượng</th>
                <th></th>
            </tr>
        </thead>
        <tbody id="row_medicine">
            <tr>
                <td>
                    <span class="text-xs font-weight-bold">aaaa</span>
                </td>
                <td>
                    <span class="text-xs font-weight-bold">aaaa</span>
                </td>
                <td>
                    <input type="number" >
                </td>
            </tr>
        </tbody>
    </table>
</div>
<script>
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

    async function medicineToBill(){
        
        var idMedicine = document.getElementById("nameMedicine").value;
        var row_medicine = document.getElementById("row_medicine");
        row_medicine.add(tr);
        tr.add(li).add()


        // const response = await fetch('http://127.0.0.1:8000/api/admin/medicine-to-bill/' +idMedicine, {
        //         method: 'GET',
        //         headers: {
        //         'Content-Type': 'application/json'
        //         }
        //     });
        // const medicine = await response.json(); //extract JSON from the http response
        // var nameMedicine = document.getElementById("nameMedicine");
        // // nameMedicine.innerHTML = '';
        // medicine.forEach(medicine => {
        //     let idMedicine = medicine.id;
        //     let name = medicine.name;
        //     let nameMedicine = document.getElementById("nameMedicine");
        //     var option = document.createElement("ul");
        //     ul.value = idMedicine;
        //     ul.text = name;
        //     nameMedicine.add(option);
        // });
    }
</script>
@endsection