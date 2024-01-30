@extends('backend.layoutBE')
@section('contentBE')
<div class="container-fluid px-4">
    <h1 class="mt-4">Like</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="{{route('be.home')}}">Like</a></li>
        <li class="breadcrumb-item active">Like</li>
    </ol>
    @if (Session::has("note"))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{Session::get("note")}}
        <strong> <i class="fa-solid fa-square-check"></i> Like !</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    @endif
    <div class="card mb-4">
        {{-- <div class="card-header">
            <a href="{{route('be.categoryadd')}}" class="btn btn--sm btn-primary">
                <i class="fas fa-table me-1"></i>
            Add Like
            </a>
        </div> --}}
        <div class="card-body">
            <table id="datatablesSimple">

                <thead>
                    <tr>
                        <th>No</th>
                        <th>Account id</th>
                        <th>Product id</th>
                        <th>Date created </th>
                        <th>Update date </th>
                        <th>Action</th>
                    </tr>
                </thead>

               <tbody>
                @foreach ($like as $item)

                <tr>
                        <td> {{$item['id']}} </td>
                        <td> {{$item['account_id']}} </td>
                        <td> {{$item['product_id']}} </td>
                        <td> {{$item['created_at']}} </td>
                        <td> {{$item['updated_at']}} </td>
                        <td>
                            <a class="btn btn-success" href=""><i class="fa-solid fa-wrench"></i> Update</a>
                            <a class="btn btn-danger" href=""><i class="fa-solid fa-trash"></i> Delete</a>
                        </td>
                </tr>
                @endforeach
               </tbody>

            </table>
        </div>
    </div>
</div>
@endsection
