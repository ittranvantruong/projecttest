@extends('layouts.master')

@section('content')
<main>
	<div class="row justify-content-center">
		<div class="col-6">
			<form action="{{ route('blog.store') }}" method="post">
				@csrf
				<div class="mb-3">
					  <label for="exampleFormControlInput1" class="form-label">Title</label>
					  <input type="email" class="form-control" id="exampleFormControlInput1" name="title">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">Content</label>
					  <textarea class="form-control" id="exampleFormControlTextarea1" name="content" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-outline-primary">Submit</button>
			</form>
		</div>
	</div>
</main>
@endsection
	