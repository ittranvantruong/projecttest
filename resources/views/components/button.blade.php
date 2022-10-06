{{-- @props([
    'title',
    'footer',
    'color' => 'grary'
]) --}}

<span {{ $title->attributes->class(['text-lg']) }}>{{ $title }}</span>
<button type="{{ $type }}" {{ $attributes }}>
	{{ $slot }}
	 {{ $isSelected(1) ? 'selected="selected"' : '' }}
</button>
<span {{ $footer->attributes->class(['text-gray-700']) }}>{{ $footer }}</span>