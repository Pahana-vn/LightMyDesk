@extends('backend.layoutBE')
@section('contentBE')

<div class="container-fluid px-4">
    <ol class="breadcrumb mb-4">
        <h1 class="breadcrumb-item active">Add Account</h1>
        <hr>
    </ol>

    <form action="{{route('be.accountadd')}}" method="POST">
        @csrf
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">User name</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="username" value="{{old('username')}}">
                {!!$errors->first("username",' <div class="text-danger">:message
                    Please provide a valid username.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="address" value="{{old('address')}}">
                {!!$errors->first("address",' <div class="text-danger">:message
                    Please provide a valid address.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-5">
                <input type="email" class="form-control" name="email" value="{{old('email')}}">
                {!!$errors->first("email",' <div class="text-danger">:message
                    Please provide a valid email.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" name="password" value="{{old('password')}}">
                {!!$errors->first("password",' <div class="text-danger">:message
                    Please provide a valid password.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Fullname</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="fullname" value="{{old('fullname')}}">
                {!!$errors->first("fullname",' <div class="text-danger">:message
                    Please provide a valid fullname.
                </div>') !!}

            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Phone</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="phone" value="{{old('phone')}}">
                {!!$errors->first("phone",' <div class="text-danger">:message
                    Please provide a valid phone.
                </div>') !!}
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Role</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" name="role" value="{{old('role')}}">
                {!!$errors->first("role",' <div class="text-danger">:message
                    Please provide a valid role.
                </div>') !!}
            </div>
        </div>

        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Status</label>
            <div class="col-sm-5">
                <input type="radio" class="" name="status" checked value="1"> Active
                <input type="radio" class="" name="status" value="0"> Hide
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label"></label>
            <div class="col-sm-5">
                <button class="btn btn-success" type="submit"> <i class="fa fa-plus"></i> Add</button>
                <a class="btn btn-dark" href="{{route('be.account')}}"> <i class="fa fa-arrow-circle-left"></i> Back</a>
            </div>
        </div>
    </form>


</div>

@endsection
