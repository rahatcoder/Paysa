@extends('layouts.admin')
@section('content')
  <div class="row">
      <div class="col-md-12">
          <div class="card mb-3">
            <div class="card-header">
              <div class="row">
                  <div class="col-md-8 card_title_part">
                      <i class="fab fa-gg-circle"></i>All Expense Information
                  </div>
                  <div class="col-md-4 card_button_part">
                      <a href="{{url('dashboard/expense/add')}}" class="btn btn-sm btn-dark"><i class="fas fa-plus-circle"></i>Add Expense</a>
                  </div>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                  @if(Session::has('success'))
                    <div class="alert alert-success alert_success" role="alert">
                       <strong>Success!</strong> {{Session::get('success')}}
                    </div>
                  @endif
                  @if(Session::has('error'))
                    <div class="alert alert-danger alert_error" role="alert">
                       <strong>Opps!</strong> {{Session::get('error')}}
                    </div>
                  @endif
                </div>
                <div class="col-md-2"></div>
              </div>
              <table id="alltableinfo" class="table table-bordered table-striped table-hover custom_table">
                <thead class="table-dark">
                  <tr>
                    <th>Date</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Amount</th>
                    <th>Manage</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($all as $data)
                  <tr>
                    <td>{{date('d-m-Y',strtotime($data->expense_date))}}</td>
                    <td>{{$data->expense_title}}</td>
                    <td>{{$data->categoryInfo->expcate_name}}</td>
                    <td>{{number_format($data->expense_amount,2)}}</td>
                    <td>
                        <div class="btn-group btn_group_manage" role="group">
                          <button type="button" class="btn btn-sm btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Manage</button>
                          <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="{{url('dashboard/expense/view/'.$data->expense_slug)}}">View</a></li>
                            <li><a class="dropdown-item" href="{{url('dashboard/expense/edit/'.$data->expense_slug)}}">Edit</a></li>
                            <li><a class="dropdown-item" href="#" id="softDelete" data-bs-toggle="modal" data-bs-target="#softDeleteModal" data-id="{{$data->expense_id}}">Delete</a></li>
                          </ul>
                        </div>
                    </td>
                  </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <div class="card-footer">
              <div class="btn-group" role="group" aria-label="Button group">
                <button type="button" class="btn btn-sm btn-dark">Print</button>
                <button type="button" class="btn btn-sm btn-secondary">PDF</button>
                <button type="button" class="btn btn-sm btn-dark">Excel</button>
              </div>
            </div>
          </div>
      </div>
  </div>
  <!-- delete modal code-->
  <div class="modal fade" id="softDeleteModal" tabindex="-1" aria-labelledby="softDeleteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form method="post" action="{{url('dashboard/expense/softdelete')}}">
      @csrf
      <div class="modal-content modal_content">
        <div class="modal-header modal_header">
          <h1 class="modal-title modal_title" id="softDeleteModalLabel"><i class="fab fa-gg-circle"></i> Confirm Message</h1>
        </div>
        <div class="modal-body modal_body">
          Are you want to sure delete data?
          <input type="hidden" name="modal_id" id="modal_id"/>
        </div>
        <div class="modal-footer modal_footer">
          <button type="submit" class="btn btn-sm btn-success">Confirm</button>
          <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </form>
  </div>
</div>
@endsection
