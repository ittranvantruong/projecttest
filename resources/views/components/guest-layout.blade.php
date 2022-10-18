<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
	<x-partials.head />
</head>
<body>
	{{ $slot }}
<x-partials.footer />
@stack('scripts')
</body>

</html>