@extends('layouts.master')

@section('content')
<main>
	<div class="row justify-content-center">
		<div class="col">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Created_at</th>
					</tr>
				</thead>
				@foreach($blog as $item)
				<tr>
					<td>{{ $item->id }}</td>
					<td>{{ $item->title }}</td>
					<td>{{ $item->created_at }}</td>
				</tr>
				@endforeach
			</table>
		</div>		
	</div>
</main>
@endsection
	