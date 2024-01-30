@extends('backend.layoutBE')
@section('contentBE')
<div class="container-fluid px-4">
    <h1 class="mt-4">Order</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="{{route('be.home')}}">Order</a></li>
        <li class="breadcrumb-item active">Order</li>
    </ol>
    @if (Session::has("note"))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{Session::get("note")}}
        <strong> <i class="fa-solid fa-square-check"></i> Order !</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    @endif
    <div class="card mb-4">
        <div class="card-header">
            <a href="{{route('be.categoryadd')}}" class="btn btn--sm btn-primary">
                <i class="fas fa-table me-1"></i>
            Add Order
            </a>
        </div>
        <div class="card-body">
            <table id="datatablesSimple">

                <thead>
                    <tr>
                        <th>No</th>
                        <th>Account id</th>
                        <th>Ship</th>
                        <th>Total</th>
                        <th>Payment</th>
                        <th>Ship time</th>
                        <th>Date order</th>
                        <th>Statusr</th>
                        <th>Action</th>
                    </tr>
                </thead>

               <tbody>
                @foreach ($order as $item)
                <?php
                    if($item->status==1){
                        $status='<i class="fa fa-check-circle"></i>';
                    }else {
                        $status='<i class="fa fa-close"></i>';
                    }
                ?>
                <tr>
                        <td> {{$item['id']}} </td>
                        <td> {{$item['id_account']}} </td>
                        <td> {{$item['ship']}} </td>
                        <td> {{$item['total']}} </td>
                        <td> {{$item['payment']}} </td>
                        <td> {{$item['shiptime']}} </td>
                        <td> {{$item['date_order']}} </td>
                        <td> {!!$status!!} </td>
                        <td>
                            <a class="btn btn-success" href="{{route('be.categoryupdate',$item->id)}}"><i class="fa-solid fa-wrench"></i> Update</a>
                            <a class="btn btn-danger" href="{{route('be.categorydel',$item->id)}}"><i class="fa-solid fa-trash"></i> Delete</a>
                        </td>
                </tr>
                @endforeach
               </tbody>

            </table>
        </div>
    </div>
</div>
@endsection
