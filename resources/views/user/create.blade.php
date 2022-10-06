@extends('layouts.master')

@section('content')
    <x-button type="button" :message="$data" class="btn btn-outline-primary" :selected="1">
    	
    	<x-slot name="title" class="font-bold" color="purple">
	        Server Error
	    </x-slot>
	    <x-slot name="footer" class="text-sm" data-id="1">
	        Server Error footer
	    </x-slot>
    	<x-button.icon class="text-danger" name="icon" :active="1" /> Submit
    </x-button>
@endsection
