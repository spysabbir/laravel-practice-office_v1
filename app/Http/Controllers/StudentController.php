<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\Facades\DataTables;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        if($request->ajax()){
            $students = Student::latest()->get();

            return DataTables::of($students)
                            ->addIndexColumn()
                            ->addColumn('action', function($row){
                                $btn = '<button type="button" class="btn btn-primary editStudent" data-bs-toggle="modal" data-id="'.$row->id.'" data-bs-target="#editStudent">Edit</button>';
                                $btn =  $btn.'<button type="button" class="btn btn-danger deleteStudent" data-id="'.$row->id.'">Delete</button>';
                                return $btn;
                            })
                            ->rawColumns(['action'])
                            ->make(true);
        }

        return view('students');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:students',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->errors()->toArray()
            ]);
        } else {
            Student::create($request->all());

            return response()->json([
                'success' => 'Student data created successfully'
            ]);
        }
    }

    public function edit(string $id)
    {
        $student = Student::find($id);
        return response()->json($student);
    }

    public function update(Request $request, string $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:students,email,' . $id,
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
                'errors' => $validator->errors()->toArray()
            ]);
        } else {
            $student = Student::find($id);
            $student->update($request->all());

            return response()->json([
                'success' => 'Student data updated successfully'
            ]);
        }
    }

    public function destroy(string $id)
    {
        $student = Student::find($id);
        $student->delete();

        return response()->json([
            'success' => 'Student data deleted successfully'
        ]);
    }
}
