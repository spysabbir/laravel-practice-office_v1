<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Laravel Ajax CRUD Tutorial Example</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">

</head>
<body>
    <div class="container">
        <h1>Laravel Ajax CRUD Tutorial Example</h1>

        <div class="card mt-5">
            <div class="card-header">
                <!-- Create Button -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createStudent">
                    Create
                </button>

                <!-- Create Modal -->
                <div class="modal fade" id="createStudent" tabindex="-1" aria-labelledby="createStudentLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="createStudentLabel">Create Student</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <form id="createStudentForm">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Full name</label>
                                        <input type="text" class="form-control" name="name" placeholder="Name">
                                        <span class="text-danger error-text name_error"></span>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Email address</label>
                                        <input type="email" class="form-control" name="email" placeholder="Email">
                                        <span class="text-danger error-text email_error"></span>
                                    </div>
                                    <button type="button" id="createStudentBtn" class="btn btn-primary">Create</button>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-bordered" id="studentsTable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th width="280px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Edit Modal -->
                        <div class="modal fade" id="editStudent" tabindex="-1" aria-labelledby="editStudentLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="editStudentLabel">Edit Student</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form id="editStudentForm">
                                            @csrf
                                            <input type="hidden" id="edit_student_id">
                                            <div class="mb-3">
                                                <label class="form-label">Full name</label>
                                                <input type="text" class="form-control" id="edit_name" name="name">
                                                <span class="text-danger error-text update_name_error"></span>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Email address</label>
                                                <input type="email" class="form-control" id="edit_email" name="email">
                                                <span class="text-danger error-text update_email_error"></span>
                                            </div>
                                            <button type="button" id="updateStudentBtn" class="btn btn-primary">Update</button>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </tbody>
                </table>
            </div>
        </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            // Read Data
            $('#studentsTable').DataTable({
                processing: true,
                serverSide: true,
                searching: true,
                ajax: {
                    url: "{{ route('students.index') }}",
                },
                columns: [
                    {data: 'DT_RowIndex', name: 'DT_RowIndex'},
                    {data: 'name', name: 'name'},
                    {data: 'email', name: 'email'},
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            })

            // Create Data
            $('#createStudentBtn').click(function () {
                var formData = $('#createStudentForm').serialize();
                $.ajax({
                    type: 'POST',
                    url: '{{ route("students.store") }}',
                    data: formData,
                    beforeSend:function(){
                        $(document).find('span.error-text').text('');
                    },
                    success: function (response) {
                        if (response.status == 400) {
                            $.each(response.errors, function(prefix, val){
                                $('span.'+prefix+'_error').text(val[0]);
                            })
                        }else{
                            $('#createStudentForm')[0].reset();
                            $("#createStudent").modal('hide');
                            $('#studentsTable').DataTable().ajax.reload();
                        }
                    },
                });
            });

            // Edit Data
            $(document).on('click', '.editStudent', function () {
                var studentId = $(this).data('id');
                var url = "{{ route('students.edit', ":studentId") }}";
                url = url.replace(':studentId', studentId)
                $.ajax({
                    type: 'GET',
                    url: url,
                    success: function (response) {
                        $('#edit_student_id').val(response.id);
                        $('#edit_name').val(response.name);
                        $('#edit_email').val(response.email);
                    },
                });
            });

            // Update Data
            $('#updateStudentBtn').click(function () {
                var formData = $('#editStudentForm').serialize();
                var studentId = $('#edit_student_id').val();
                var url = "{{ route('students.update', ":studentId") }}";
                url = url.replace(':studentId', studentId)
                $.ajax({
                    type: 'PUT',
                    url: url,
                    data: formData,
                    beforeSend:function(){
                        $(document).find('span.error-text').text('');
                    },
                    success: function (response) {
                        if (response.status == 400) {
                            $.each(response.errors, function(prefix, val){
                                $('span.update_'+prefix+'_error').text(val[0]);
                            })
                        }else{
                            $("#editStudent").modal('hide');
                            $('#studentsTable').DataTable().ajax.reload();
                        }
                    },
                });
            });

            // Delete Data
            $(document).on('click', '.deleteStudent', function () {
                var studentId = $(this).data('id');
                var url = "{{ route('students.destroy', ":studentId") }}";
                url = url.replace(':studentId', studentId)
                if (confirm('Are you sure you want to delete this student?')) {
                    $.ajax({
                        type: 'DELETE',
                        url: url,
                        success: function (data) {
                            $('#studentsTable').DataTable().ajax.reload();
                        },
                    });
                }
            });
        });
    </script>
</body>
</html>
