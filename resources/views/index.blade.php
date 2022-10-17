<x-guest-layout>
	<x-link text="Xin chào" class="text-danger"/>
	<form action="" method="post">
		@csrf
		<button type="submit">submit</button>
	</form>
</x-guest-layout>