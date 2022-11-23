@extends('layouts.admin')
@section('content')
<style>
    .custom-select {
    display: inline-block;
    width: 100%;
    height: calc(2.25rem + 2px);
    padding: 0.375rem 1.75rem 0.375rem 0.75rem;
    line-height: 1.5;
    color: #495057;
    vertical-align: middle;
    background: #fff url(data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E) no-repeat right 0.75rem center;
    background-size: 8px 10px;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
</style>
<div class="container">
    <h2>Tư vấn cho 
        @if ($ask->gender == 0)
            anh 
        @else
            chị 
        @endif
        {{$ask->name}}
    </h2>
    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif
    @if(session('status'))
        <div class="alert alert-success" role="alert">
            {{session('status')}}
        </div>
        
    @endif


                        <form autocomplete="off" method="POST" action="{{route('ask_answer.store')}}" enctype="multipart/form-data">
                        @method('POST')
                        @csrf
                        <input type="hidden" name="user" value="{{Auth::user()->name}}">
                        <input type="hidden" name="ask_id" value="{{$ask->id}}">

                        <div class="form-group">
                            <label for="title">Câu hỏi</label><br>
                            <span class="form-control">{{$ask->content}}</span>
                        </div>
                            <div class="form-group">
                            <label for="title">Trả lời </label>
                            <textarea name="content" id="ckeditor_desc"  rows="5" class="form-control" style="resize: none;"></textarea>






                            <input type="submit" name="themdanhmuc" class="btn btn-primary mt-2" value="Trả lời">
                        </div>
                    </form>


    
</div>
@endsection
