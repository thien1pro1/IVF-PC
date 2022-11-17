@extends('layouts.client')
@section('content')
<div class="container">
    @foreach ($post as $post)
        <li>
            {{$post->title}}
        </li>
    @endforeach
</div>

@endsection
