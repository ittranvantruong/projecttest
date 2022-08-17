@extends('layouts.master')

@section('content')
<main>
	<div class="row justify-content-center">
		<div class="col-6">
			<form action="{{ route('blog.update') }}" method="post">
				@csrf
				@method('PUT')
				<input type="hidden" name="id" value="{{ $blog->id }}">
				<div class="mb-3">
					  <label for="exampleFormControlInput1" class="form-label">Title</label>
					  <input type="text" class="form-control" id="exampleFormControlInput1" name="title" value="{{ $blog->title }}">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">Content</label>
					  <textarea class="form-control" id="exampleFormControlTextarea1" name="content" rows="3">{{ $blog->content }}</textarea>
				</div>
				<button type="submit" class="btn btn-outline-primary">Submit</button>
			</form>
		</div>
	</div>
</main>
<form action="{{ route('blog.delete') }}" method="post">
	@csrf
	@method('DELETE')
	<input type="hidden" name="id" value="{{ $blog->id }}">
	<button type="submit" class="btn btn-outline-danger">Delete</button>
</form>
@endsection
	