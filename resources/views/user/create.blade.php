@extends('layouts.master')

@section('content')
    <x-button type="submit" :message="__('Được rồi con chó')" class="btn btn-outline-primary" :selected="1" disabled/>
@endsection
