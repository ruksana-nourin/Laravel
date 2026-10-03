@extends('admin.layouts.master')

@section('title', 'Create Exam')

@section('content')

@section('styles')
@endsection

<div class="main-panel">
    <div class="content-wrapper">

        <div class="page-header">
            <h3 class="page-title">Create Exam</h3>
        </div>

        <div class="row">
            <div class="col-12 grid-margin stretch-card">

                <div class="card">
                    <div class="card-body">

                        <x-admin.phead
                            title="Create Exam"
                            subtitle="Add a new examination from here."
                        >
                            <a href="{{ route('exams.index') }}"
                                class="btn btn-secondary btn-rounded btn-fw">
                                <i class="mdi mdi-arrow-left"></i>
                                Back
                            </a>
                        </x-admin.phead>


                        <form action="{{ route('exams.store') }}"
                            method="POST">

                            @csrf


                            {{-- Exam Name --}}
                            <div class="form-group">

                                <label for="name">
                                    Exam Name
                                </label>

                                <input type="text"
                                    name="name"
                                    id="name"
                                    class="form-control @error('name') is-invalid @enderror"
                                    value="{{ old('name') }}"
                                    placeholder="Enter exam name">

                                @error('name')
                                    <span class="text-danger">
                                        {{ $message }}
                                    </span>
                                @enderror

                            </div>


                            <div class="row">

                                {{-- Academic Session --}}
                                <div class="col-md-6">

                                    <div class="form-group">

                                        <label for="academic_session_id">
                                            Academic Session
                                        </label>

                                        <select name="academic_session_id"
                                            id="academic_session_id"
                                            class="form-control @error('academic_session_id') is-invalid @enderror">

                                            <option value="">
                                                Select Academic Session
                                            </option>

                                            @foreach ($academicSessions as $session)

                                                <option value="{{ $session->id }}"
                                                    {{ old('academic_session_id') == $session->id ? 'selected' : '' }}>

                                                    {{ $session->name }}

                                                </option>

                                            @endforeach

                                        </select>

                                        @error('academic_session_id')
                                            <span class="text-danger">
                                                {{ $message }}
                                            </span>
                                        @enderror

                                    </div>

                                </div>


                                {{-- Semester --}}
                                <div class="col-md-6">

                                    <div class="form-group">

                                        <label for="semester_id">
                                            Semester
                                        </label>

                                        <select name="semester_id"
                                            id="semester_id"
                                            class="form-control @error('semester_id') is-invalid @enderror">

                                            <option value="">
                                                Select Semester
                                            </option>

                                            @foreach ($semesters as $semester)

                                                <option value="{{ $semester->id }}"
                                                    data-session="{{ $semester->academic_session_id }}"
                                                    {{ old('semester_id') == $semester->id ? 'selected' : '' }}>

                                                    {{ $semester->name }}

                                                </option>

                                            @endforeach

                                        </select>

                                        @error('semester_id')
                                            <span class="text-danger">
                                                {{ $message }}
                                            </span>
                                        @enderror

                                    </div>

                                </div>

                            </div>


                            <div class="row">

                                {{-- Academic Class --}}
                                <div class="col-md-6">

                                    <div class="form-group">

                                        <label for="academic_class_id">
                                            Academic Class
                                        </label>

                                        <select name="academic_class_id"
                                            id="academic_class_id"
                                            class="form-control @error('academic_class_id') is-invalid @enderror">

                                            <option value="">
                                                Select Academic Class
                                            </option>

                                            @foreach ($academicClasses as $class)

                                                <option value="{{ $class->id }}"
                                                    {{ old('academic_class_id') == $class->id ? 'selected' : '' }}>

                                                    {{ $class->name }}

                                                </option>

                                            @endforeach

                                        </select>

                                        @error('academic_class_id')
                                            <span class="text-danger">
                                                {{ $message }}
                                            </span>
                                        @enderror

                                    </div>

                                </div>


                                {{-- Exam Date --}}
                                <div class="col-md-6">

                                    <div class="form-group">

                                        <label for="exam_date">
                                            Exam Date
                                        </label>

                                        <input type="date"
                                            name="exam_date"
                                            id="exam_date"
                                            class="form-control @error('exam_date') is-invalid @enderror"
                                            value="{{ old('exam_date') }}">

                                        @error('exam_date')
                                            <span class="text-danger">
                                                {{ $message }}
                                            </span>
                                        @enderror

                                    </div>

                                </div>

                            </div>


                            {{-- Buttons --}}
                            <div class="mt-4">

                                <button type="submit"
                                    class="btn btn-success btn-rounded btn-fw">
                                    <i class="mdi mdi-content-save"></i>
                                    Save Exam
                                </button>

                                <a href="{{ route('exams.index') }}"
                                    class="btn btn-light btn-rounded btn-fw">
                                    Cancel
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
    $(document).ready(function() {

        let semesterSelect = $('#semester_id');
        let sessionSelect = $('#academic_session_id');

        function filterSemesters() {

            let sessionId = sessionSelect.val();
            let selectedSemester = semesterSelect.val();

            semesterSelect.find('option').each(function() {

                let option = $(this);

                if (option.val() === '') {
                    option.show();
                    return;
                }

                if (option.data('session') == sessionId) {

                    option.show();

                } else {

                    option.hide();

                    if (option.val() == selectedSemester) {
                        semesterSelect.val('');
                    }

                }

            });
        }


        // Session change
        sessionSelect.on('change', function() {

            filterSemesters();

        });


        // Initial load
        filterSemesters();

    });
</script>

@endsection