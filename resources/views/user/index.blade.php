@extends('layouts.master')

@section('content')
    {{$dataTable->table(['class' => 'table table-bordered'], true)}}
@endsection

@push('scripts')

    {{$dataTable->scripts()}}

@endpush