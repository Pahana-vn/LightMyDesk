@extends('backend.layoutBE')
@section('contentBE')

<div class="container-fluid px-4">
    <ol class="breadcrumb mb-4">
        <h1 class="breadcrumb-item active">Edit Account</h1>
        <hr>
    </ol>

    <form action="{{route('be.accountupdate', $load->id)}}" method="POST">
        @csrf
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">User name</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="username" value="{{old('username',isset($load->username)?$load->username:null)}}">
                {!!$errors->first("username",' <div class="text-danger">:message
                    Please provide a valid username.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="address" value="{{old('address',isset($load->address)?$load->address:null)}}">
                {!!$errors->first("address",' <div class="text-danger">:message
                    Please provide a valid address.
                </div>') !!}

            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Email </label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="email " value="{{old('email ',isset($load->email )?$load->email :null)}}">
                {!!$errors->first("email ",' <div class="text-danger">:message
                    Please provide a valid email .
                </div>') !!}
            </div>
        </div>



        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" value="{{old('password',isset($load->password)?$load->password:null)}}">
                {!!$errors->first("password",' <div class="text-danger">:message
                    Please provide a valid password.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Fullname</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="fullname" value="{{old('fullname',isset($load->fullname)?$load->fullname:null)}}">
                {!!$errors->first("fullname",' <div class="text-danger">:message
                    Please provide a valid fullname.
                </div>') !!}
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Phone</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="phone" value="{{old('phone',isset($load->phone)?$load->phone:null)}}">
                {!!$errors->first("phone",' <div class="text-danger">:message
                    Please provide a valid phone.
                </div>') !!}
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Role</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="role" value="{{old('role',isset($load->role)?$load->role:null)}}">
                {!!$errors->first("role",' <div class="text-danger">:message
                    Please provide a valid role.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Status</label>
            <div class="col-sm-5">
                <input type="radio" class="" name="status" <?php if($load->status==1){echo"checked";}else{echo"";}?>  value="1"> Active
                <input type="radio" class="" name="status" <?php if($load->status==0){echo"checked";}else{echo"";}?> value="0"> Hide
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label"></label>
            <div class="col-sm-5">
                <button class="btn btn-success" type="submit"> <i class="fa-solid fa-pen-to-square"></i> Edit</button>
                <a class="btn btn-dark" href="{{route('be.account')}}"> <i class="fa fa-arrow-circle-left"></i> Back</a>
            </div>
        </div>
    </form>


</div>

@endsection
