@extends('backend.layoutBE')
@section('contentBE')
<div class="container-fluid px-4">
    <h1 class="mt-4">Mess customer</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="{{route('be.home')}}">Mess customer</a></li>
        <li class="breadcrumb-item active">Mess customer</li>
    </ol>
    @if (Session::has("note"))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{Session::get("note")}}
        <strong> <i class="fa-solid fa-square-check"></i> Mess customer !</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    @endif
    <div class="card mb-4">
        <div class="card-header">
            <a href="" class="btn btn--sm btn-primary">
                <i class="fas fa-table me-1"></i>
            Add Mess customer
            </a>
        </div>
        <div class="card-body">
            <table id="datatablesSimple">

                <thead>
                    <tr>
                        <th>No</th>
                        <th>User name</th>
                        <th>Email</th>
                        <th>Title</th>
                        <th>Phone</th>
                        <th>Description</th>
                        <th>Created at</th>
                        <th>Action</th>
                    </tr>
                </thead>

               <tbody>
                @foreach ($contact as $item)
                <?php
                    if($item->status==1){
                        $status='<i class="fa fa-check-circle"></i>';
                    }else {
                        $status='<i class="fa fa-close"></i>';
                    }
                ?>
                <tr>
                        <td> {{$item['id']}} </td>
                        <td> {{$item['name']}} </td>
                        <td> {{$item['email']}} </td>
                        <td> {{$item['title']}} </td>
                        <td> {{$item['phone']}} </td>
                        <td> {{$item['desc']}} </td>
                        <td> {{$item['created_at']}} </td>
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
