

@php
$name = "Mina";
$arr =["mina","rina", "tina"];
$active = true;
@endphp
@foreach ($arr as $item)
    {!! $item. "<br>" !!}
@endforeach



<h1>Test Page</h1>
<p>Name: <?= $name?></p>
<p>Name:{{$name}}</p>
<p><b>Active:</b> {{ $active ? "Active ✅" : "Inactive ❌" }}</p>