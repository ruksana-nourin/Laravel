@extends('admin.layouts.master')

@section('title', 'Attendance Report')

@section('content')

<div class="main-panel">

    <div class="content-wrapper">

        <div class="page-header">
            <h3 class="page-title">
                Attendance Report
            </h3>
        </div>


        <div class="row">

            <div class="col-12 grid-margin stretch-card">

                <div class="card">

                    <div class="card-body">

                        <x-admin.phead
                            title="Attendance Report"
                            subtitle="Filter and view student attendance records."
                        >

                            <a href="{{ route('attendance-sessions.index') }}"
                                class="btn btn-warning btn-rounded btn-fw">

                                <i class="mdi mdi-arrow-left"></i>

                                Attendance Sessions

                            </a>

                        </x-admin.phead>


                        {{-- Filter Form --}}

                        <form method="GET"
                            action="{{ route('attendance.report') }}">

                            <div class="row">

                                {{-- Academic Session --}}

                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>
                                        Academic Session
                                    </label>

                                    <select
                                        name="academic_session_id"
                                        class="form-control">

                                        <option value="">
                                            All Sessions
                                        </option>

                                        @foreach ($academicSessions as $session)

                                            <option
                                                value="{{ $session->id }}"
                                                {{ request('academic_session_id') == $session->id ? 'selected' : '' }}>

                                                {{ $session->name }}

                                            </option>

                                        @endforeach

                                    </select>

                                </div>


                                {{-- Semester --}}

                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>
                                        Semester
                                    </label>

                                    <select
                                        name="semester_id"
                                        class="form-control">

                                        <option value="">
                                            All Semesters
                                        </option>

                                        @foreach ($semesters as $semester)

                                            <option
                                                value="{{ $semester->id }}"
                                                {{ request('semester_id') == $semester->id ? 'selected' : '' }}>

                                                {{ $semester->name }}

                                            </option>

                                        @endforeach

                                    </select>

                                </div>

                                {{-- Course --}}

                                <div class="col-lg-4 col-md-6 col-12 mb-3">
                                
                                    <label>Course</label>
                                
                                    <select
                                        name="course_id"
                                        id="course_id"
                                        class="form-control">
                                
                                        <option value="">
                                            Select Course
                                        </option>
                                    
                                        @foreach ($courses as $course)
                                    
                                            <option
                                                value="{{ $course->id }}"
                                                {{ request('course_id') == $course->id ? 'selected' : '' }}>
                                    
                                                {{ $course->name }}
                                    
                                            </option>
                                        
                                        @endforeach
                                        
                                    </select>
                                
                                </div>


                                {{-- Class --}}

<div class="col-lg-4 col-md-6 col-12 mb-3">

    <label>Class</label>

    <select
        name="class_id"
        id="class_id"
        class="form-control">

        <option value="">
            Select Class
        </option>

    </select>

</div>


                                {{-- Section --}}

                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>
                                        Section
                                    </label>

                                    <select
                                        name="section_id"
                                        class="form-control">

                                        <option value="">
                                            All Sections
                                        </option>

                                        @foreach ($sections as $section)

                                            <option
                                                value="{{ $section->id }}"
                                                {{ request('section_id') == $section->id ? 'selected' : '' }}>

                                                {{ $section->name }}

                                            </option>

                                        @endforeach

                                    </select>

                                </div>


                                {{-- Subject --}}

                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>
                                        Subject
                                    </label>

                                    <select
                                        name="subject_id"
                                        class="form-control">

                                        <option value="">
                                            All Subjects
                                        </option>

                                        @foreach ($subjects as $subject)

                                            <option
                                                value="{{ $subject->id }}"
                                                {{ request('subject_id') == $subject->id ? 'selected' : '' }}>

                                                {{ $subject->name }}

                                            </option>

                                        @endforeach

                                    </select>

                                </div>


                                {{-- Date --}}

                                <div class="col-lg-4 col-md-6 col-12 mb-3">

                                    <label>
                                        Attendance Date
                                    </label>

                                    <input
                                        type="date"
                                        name="attendance_date"
                                        class="form-control"
                                        value="{{ request('attendance_date') }}">

                                </div>

                            </div>


                            <div class="mt-2">

                                <button
                                    type="submit"
                                    class="btn btn-primary">

                                    <i class="mdi mdi-magnify"></i>

                                    Generate Report

                                </button>


                                <a
                                    href="{{ route('attendance.report') }}"
                                    class="btn btn-dark">

                                    <i class="mdi mdi-refresh"></i>

                                    Reset

                                </a>

                            </div>

                        </form>


                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

@endsection

@section('scripts')

<script>

    $('#course_id').on('change', function () {

        let courseId = $(this).val();

        let classDropdown = $('#class_id');

        classDropdown.empty();

        classDropdown.append(
            '<option value="">Select Class</option>'
        );


        if (!courseId) {
            return;
        }


        $.ajax({

            url: "{{ url('courses') }}/" + courseId + "/classes",

            type: "GET",

            success: function (classes) {

                $.each(classes, function (index, item) {

                    classDropdown.append(
                        `<option value="${item.id}">
                            ${item.name}
                        </option>`
                    );

                });

            },

            error: function () {

                console.log('Unable to load classes.');

            }

        });

    });

</script>

@endsection