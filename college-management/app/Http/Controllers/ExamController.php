<?php

namespace App\Http\Controllers;

use App\Models\AcademicClass;
use App\Models\AcademicSession;
use App\Models\Exam;
use App\Models\Semester;
use Illuminate\Http\Request;

class ExamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $exams = Exam::join('academic_sessions as acs', 'exams.academic_session_id', '=', 'acs.id')
            ->join('semesters as s','exams.semester_id', '=','s.id')
            ->join('academic_classes as ac','exams.academic_class_id','=','ac.id')
            ->orderBy('exams.id', 'desc')
            ->select(
                'exams.id',
                'exams.name',
                'acs.name as academic_session',
                's.name as semester',
                'ac.name as academic_class',
                'exams.exam_date'
            )
            ->paginate(10);

        return view('admin.pages.exams.index', compact('exams'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
{
    $academicSessions = AcademicSession::orderBy('id', 'asc')->get();
    $semesters = Semester::orderBy('id', 'asc')->get();
    $academicClasses = AcademicClass::orderBy('id', 'asc')->get();

    return view('admin.pages.exams.create', compact(
        'academicSessions',
        'semesters',
        'academicClasses'
    ));
}

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
