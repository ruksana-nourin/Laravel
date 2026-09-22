<h2>Hi {{ $name }}, </h2>
<p>Your Information is updated!</p>

<br>
<h4>Now your updated information given bellow:</h4>
<br>
<b>Your name:</b> {{ $name }} <br>
<b>Your Email:</b> {{ $email }} <br>
<b>Your role:</b> {{ $role->name }} <br>

<br>

Thanks,<br>
{{ config('app.name') }}