@extends('admin.layouts.master')

@section('title', 'Attendance Details')

@section('content')

    <div class="main-panel">

        <div class="content-wrapper">
            {{-- Attendance Summary --}}

            <div class="row mb-4">

                {{-- Total Students --}}
                <div class="col-lg-3 col-md-6 col-12 mb-3">

                    <div class="attendance-summary-card">

                        <div class="summary-icon total">
                            <i class="mdi mdi-account-group"></i>
                        </div>

                        <div>
                            <small>Total Students</small>

                            <h3>
                                {{ $totalStudents }}
                            </h3>
                        </div>

                    </div>

                </div>


                {{-- Present --}}
                <div class="col-lg-3 col-md-6 col-12 mb-3">

                    <div class="attendance-summary-card">

                        <div class="summary-icon present">
                            <i class="mdi mdi-check-circle"></i>
                        </div>

                        <div>
                            <small>Present</small>

                            <h3>
                                {{ $presentStudents }}
                            </h3>
                        </div>

                    </div>

                </div>


                {{-- Absent --}}
                <div class="col-lg-3 col-md-6 col-12 mb-3">

                    <div class="attendance-summary-card">

                        <div class="summary-icon absent">
                            <i class="mdi mdi-close-circle"></i>
                        </div>

                        <div>
                            <small>Absent</small>

                            <h3>
                                {{ $absentStudents }}
                            </h3>
                        </div>

                    </div>

                </div>


                {{-- Percentage --}}
                <div class="col-lg-3 col-md-6 col-12 mb-3">

                    <div class="attendance-summary-card">

                        <div class="summary-icon percentage">
                            <i class="mdi mdi-chart-line"></i>
                        </div>

                        <div>
                            <small>Attendance</small>

                            <h3>
                                {{ $attendancePercentage }}%
                            </h3>
                        </div>

                    </div>

                </div>

            </div>

            <div class="page-header">
                <h3 class="page-title">
                    Attendance Details
                </h3>
            </div>


            <div class="row">

                <div class="col-12 grid-margin stretch-card">

                    <div class="card">

                        <div class="card-body">

                            <x-admin.phead title="Attendance Details"
                                subtitle="View attendance information and student attendance.">
                                <a href="{{ route('attendance-sessions.edit', $attendanceSession->id) }}"
                                    class="btn btn-primary btn-rounded btn-fw">

                                    <i class="mdi mdi-pencil"></i>

                                    Edit Attendance

                                </a>

                                <a href="{{ route('attendance-sessions.index') }}"
                                    class="btn btn-warning btn-rounded btn-fw">

                                    <i class="mdi mdi-arrow-left"></i>

                                    Back to Attendance

                                </a>
                                

                            </x-admin.phead>


                            {{-- Session Information --}}

                            <div class="row">

                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Course</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->subject->course->name ?? 'N/A' }}" readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Subject</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->subject->name ?? 'N/A' }}" readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Teacher</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->teacher->name ?? 'N/A' }}" readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Class</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->academicClass->name ?? 'N/A' }}" readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Section</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->section->name ?? 'N/A' }}" readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Attendance Date</label>

                                    <input type="text" class="form-control"
                                        value="{{ \Carbon\Carbon::parse($attendanceSession->attendance_date)->format('d M, Y') }}"
                                        readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Academic Session</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->academicSession->name ?? 'N/A' }}" readonly>

                                </div>


                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>Semester</label>

                                    <input type="text" class="form-control"
                                        value="{{ $attendanceSession->semester->name ?? 'N/A' }}" readonly>

                                </div>

                            </div>


                            <hr class="my-4">


                            {{-- Student Attendance --}}

                            <h4 class="card-title">
                                Student Attendance
                            </h4>


                            <div class="table-responsive">

                                <table class="table table-hover">

                                    <thead>

                                        <tr>

                                            <th>#</th>

                                            <th>Student</th>

                                            <th>Student ID</th>

                                            <th>Status</th>

                                        </tr>

                                    </thead>


                                    <tbody>

                                        @forelse ($attendanceSession->attendanceRecords as $index => $record)

                                            <tr>

                                                <td>
                                                    {{ $index + 1 }}
                                                </td>


                                                <td>

                                                    <div class="d-flex align-items-center">

                                                        @if ($record->student->image)

                                                            <img src="{{ asset($record->student->image) }}" width="40" height="40"
                                                                class="rounded-circle mr-2" alt="{{ $record->student->name }}">

                                                        @endif


                                                        <span>
                                                            {{ $record->student->name }}
                                                        </span>

                                                    </div>

                                                </td>


                                                <td>
                                                    {{ $record->student->student_id }}
                                                </td>


                                                <td>

                                                    @if ($record->status === 'Present')

                                                        <span class="badge badge-success">
                                                            <i class="mdi mdi-check"></i>
                                                            Present
                                                        </span>

                                                    @else

                                                        <span class="badge badge-danger">
                                                            <i class="mdi mdi-close"></i>
                                                            Absent
                                                        </span>

                                                    @endif

                                                </td>

                                            </tr>

                                        @empty

                                            <tr>

                                                <td colspan="4" class="text-center">

                                                    No attendance records found.

                                                </td>

                                            </tr>

                                        @endforelse

                                    </tbody>

                                </table>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

@endsection