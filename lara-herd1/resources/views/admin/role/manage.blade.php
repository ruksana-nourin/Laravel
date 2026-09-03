<h1 align="center">
    Role Manage Page
</h1>
{{-- @php
echo "
<pre>";
print_r($roles);
echo "</pre>";
@endphp --}}

<div>
    <table width="67%" border="1" cellspacing="0" cellpadding="5" align="center">
        <thead>
            <tr>
                <th>Role ID</th>
                <th>Role Name</th>
            </tr>
        </thead>
        <tbody>
            @foreach($roles as $item)
                <tr>
                    <td>{{ $item['id'] }}</td>
                    <td>{{ $item['name'] }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>