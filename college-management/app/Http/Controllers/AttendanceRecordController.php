<?php

namespace App\Http\Controllers;

use App\Models\AttendanceRecord;
use App\Models\AcademicSession;
use App\Models\Course;
use App\Models\Semester;
use App\Models\AcademicClass;
use App\Models\Section;
use App\Models\Subject;
use Illuminate\Http\Request;

class AttendanceRecordController extends Controller
{
    public function report(Request $request)
    {
        $courses = Course::orderBy('name')->get();

        $academicSessions = AcademicSession::orderBy('id', 'desc')->get();

        $semesters = Semester::orderBy('id')->get();

        $academicClasses = AcademicClass::orderBy('name')->get();

        $sections = Section::orderBy('name')->get();

        $subjects = Subject::with('course')
            ->orderBy('name')
            ->get();

        $attendanceRecords = collect();

        return view(
            'admin.pages.attendance.report',
            compact(
                'academicSessions',
                'semesters',
                'academicClasses',
                'sections',
                'subjects',
                'courses',
                'attendanceRecords'
            )
        );
    }
    public function getClasses($courseId)
{
    $classes = AcademicClass::where('course_id', $courseId)
        ->orderBy('name')
        ->get();

    return response()->json($classes);
}
}